import de.bezier.data.sql.*;
import processing.serial.*;

Serial myPort;
SQLite db;

String white, red, blue, green, yellow;
String violate, purple, mass, temperature;
String id;
String mode;
String name = "TheMissioner", origin = "Chile", type = "White", brewdate = "2016";
String imgurl;
float score = 6.8, temperature_high = 13.0, temperature_low = 10.0, alc;
boolean first_insert = false;
int count = 1;
void setup()
{
  size( 100, 100 );
  db = new SQLite( this, "../../db/development.sqlite3" );
  printArray(Serial.list());
  println("Winster deamon start!");
  myPort = new Serial(this, Serial.list()[8], 9600);
  //updateData();
}

void draw() {
  
  if (myPort.available() > 0) {
    delay(2000);
    String inputBuff = myPort.readString();
    print("[ ");
    print(inputBuff);
    println(" ]");
    String[] inputs = split(inputBuff, ',');
    switch(inputs[0]) {
    case "r":
      id = inputs[1];
      println("Wait to register on website...");
      delay(2000);
      myPort.write("y,"+id);
      println("y,"+id);
      break;
    case "i":
      //println("Inserted");
      id = inputs[1];
      //println("ID: "+id);
      myPort.write("y,"+id);
      println("y,"+id);
      break;
    case "m": // Get operation mode
      id = inputs[1];
      mode = inputs[2];
      println("In mode: "+mode);
      myPort.write("y,"+id);
      println("y,"+id);
      
      first_insert = true;
      if(db.connect()){
        db.query("UPDATE devices SET status = 'Active' WHERE label = 6045");
        db.query("UPDATE devices SET wine = 'Sensing...' WHERE label = 6045");
        db.query("DELETE FROM winedata");
        db.query("SELECT COUNT(*) FROM wines");
        db.next();
        if(db.getInt("COUNT(*)") > 4){
          db.query("DELETE FROM WINES WHERE ID=(SELECT MAX(id) FROM WINES)");
        }
      }
      break;
    case "e":
      id = inputs[1];
      myPort.write("y,"+id);
      println("y,"+id);
      if(db.connect()){
        db.query("UPDATE devices SET status = 'Ready' WHERE label = 6045");
        db.query("UPDATE devices SET wine = '' WHERE label = 6045");
        
      }
      break;
    case "n": // return result
      id = inputs[1];
      String count = inputs[2];
      switch(count) {
        case "1":
          println(String.format("%-20s", name));
          myPort.write(String.format("%-20s", name));
          break;
        case "2":
          println(String.format("%-20s", origin));
          myPort.write(String.format("%-20s", origin));
          break;
        case "3":
          println(String.format("%-20s", brewdate));
          myPort.write(String.format("%-20s", brewdate));
          break;
        case "4":
          println(String.format("%3.0fC ~ %3.0fC           ", temperature_low, temperature_high));
          myPort.write(String.format("%3.0fC ~ %3.0fC           ", temperature_low, temperature_high));
          //myPort.write("15C ~ 16C           ");
          break;
        case "5":
          println(String.format("%2.1f                 ", score));
          myPort.write(String.format("%2.1f                 ", score));
          myPort.write("6.8                 ");
          break;
      }
      //delay(1000);
      break;
    case "u":
      //println("Update");
      id = inputs[1];
      //println("ID: "+id);
      String type = inputs[2];
      String val;
      switch(type) {
      case "w":
        //println("white");
        white = inputs[3];
        //println("val: "+white);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "r":
        //println("red");
        red = inputs[3];
        //println("val: "+red);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "g":
        //println("green");
        green = inputs[3];
        //println("val: "+green);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "b":
        //println("blue");
        blue = str(int(inputs[3])-1500);
        //println("val: "+blue);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "y":
        //println("yellow");
        yellow = inputs[3];
        //println("val: "+yellow);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "p":
        //println("purple");
        purple = inputs[3];
        //println("val: "+purple);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "v":
        //println("violate");
        violate = inputs[3];
        //println("val: "+violate);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "t":
        //println("temperature");
        temperature = inputs[3];
        //println("val: "+temperature);
        myPort.write("y,"+id);
        println("y,"+id);
        break;
      case "m":
        //println("mass");
        mass = str(1000+random(-15,15));
        //println("val: "+mass);
        myPort.write("y,"+id);
        println("y,"+id);
        updateData();
        break;
      }
      break;
    default:
      println("TRY AGAIN");
      break;
    }
  }
}

void updateData() {
  if(first_insert) {
    first_insert = false;
    analyse();
  }
  
  if ( db.connect() ) {
    db.query("INSERT INTO winedata (time,white,red,green,blue,violate,purple,yellow,mass,temperature,created_at,updated_at) VALUES (" + str(count++) + ',' + white + ',' + red + ',' + green + ',' + blue + ',' + violate + ',' + purple + ',' + yellow + ',' + mass + ',' + temperature + ",datetime('now'),datetime('now'))");
    println("Data updated!");
  }
}

void analyse(){
  println("Analysing...");
  
  // Fetch database
  if(db.connect()){
    db.query( "SELECT * FROM winedatabase" );
    int database_cnt = 52;
    float[][] database = new float[database_cnt][10];
    String[] names = new String[database_cnt];
    String[] types = new String[database_cnt];
    float[] temp_highs = new float[database_cnt];
    float[] temp_lows = new float[database_cnt];
    float[] scores = new float[database_cnt];
    String[] origins = new String[database_cnt];
    String[] brewdates = new String[database_cnt];
    String[] imgurls = new String[database_cnt];
    float[] alcs = new float[database_cnt];
    
    for(int i = 0; i < database_cnt; ++i){
      db.next();
      database[i][0] = db.getFloat("White");
      database[i][1] = db.getFloat("Red");
      database[i][2] = db.getFloat("Green");
      database[i][3] = db.getFloat("Blue");
      database[i][4] = db.getFloat("Yellow");
      database[i][5] = db.getFloat("Purple");
      database[i][6] = db.getFloat("Violate");
      types[i] = db.getString("Type");
      names[i] = db.getString("Name");
      origins[i] = db.getString("Origin");
      brewdates[i] = db.getString("Brewdate");
      temp_highs[i] = db.getFloat("Temperature_high");
      temp_lows[i] = db.getFloat("Temperature_low");
      scores[i] = db.getFloat("Score");
      imgurls[i] = db.getString("Imgurl");
      alcs[i] = db.getFloat("Alc");
    }
    
    int minId = 0;
    float minVal = 0.0;
    float whiteVal = Float.parseFloat(white);
    float redVal = Float.parseFloat(red);
    float greenVal = Float.parseFloat(green);
    float blueVal = Float.parseFloat(blue);
    float violateVal = Float.parseFloat(violate);
    float purpleVal = Float.parseFloat(purple);
    float yellowVal = Float.parseFloat(yellow);
    
    for(int i = 0; i < database_cnt; ++i){
      float val = pow(whiteVal - database[i][0], 2);
      val += pow(redVal - database[i][1], 2);
      val += pow(greenVal - database[i][2], 2);
      val += pow(blueVal - database[i][3], 2);
      val += pow(yellowVal - database[i][4], 2);
      val += pow(purpleVal - database[i][5], 2);
      val += pow(violateVal - database[i][6], 2);
      if(minVal < 1.0){
        minId = 0;
        minVal = val;
      } else if (val < minVal) {
        minVal = val;
        minId = i;
      }
    }
    
    name = names[minId];
    type = types[minId];
    score = scores[minId];
    origin = origins[minId];
    temperature_high = temp_highs[minId];
    temperature_low = temp_lows[minId];
    brewdate = brewdates[minId];
    imgurl = imgurls[minId];
    alc = alcs[minId];
    
    println("Name: " + name);
    println("Type: " + type);
    println("Score: " + score);
    println("Origin: " + origin);
    println("Temp_high: " + temperature_high);
    println("Temp_low: " + temperature_low);
    println("Brewdate: " + brewdate);
    println("Alc: " + alc);
    
    float status = Float.parseFloat(temperature) - temperature_high;
    
    db.query(String.format("INSERT INTO wines(Name, Status, Abv, Origin, Brewdate, Age, Keepdate, Score, Weight, Taste, Imgurl, Created_at, Updated_at) VALUES('%s',%f,%f,'%s','%s',%d,date('now'),%f,0,0,'%s',datetime('now'),datetime('now'));", name, status, alc, origin, brewdate, 2, score, imgurl));
    db.query(String.format("UPDATE devices SET wine = '%s' WHERE label = 6045", name));
  }
}