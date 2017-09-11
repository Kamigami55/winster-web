import de.bezier.data.sql.*;
import processing.serial.*;

Serial myPort;
SQLite db;

String white, red, blue, green, yellow;
String violate, purple, mass, temperature;
String id;
int count = 1;
void setup()
{
  size( 100, 100 );
  db = new SQLite( this, "../../db/development.sqlite3" );
  printArray(Serial.list());
  println("Winster deamon start!");
  myPort = new Serial(this, Serial.list()[10], 9600);
  //white = "11";
  //red = "11";
  //blue = "11";
  //green = "11";
  //violate = "11";
  //purple = "11";
  //yellow = "11";
  //mass = "11";
  //temperature = "11";
  //updateData();
}

void draw() {
  //println("yoo");
  if (myPort.available() > 0) {
    //println("yoo");
    //char cmdBuff = myPort.readChar();
    //char delimBuff;
    delay(2000);
    String inputBuff = myPort.readString();
    println(inputBuff);
    String[] inputs = split(inputBuff, ',');
    switch(inputs[0]) {
    case "r":
      //println("Register");
      id = inputs[1];
      //println("ID: "+id);
      println("Wait to register on website...");
      delay(10000);
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
    }
  }
}

void updateData() {
  println("Analysing...");
  delay(5000);
  //println("y,6045,Whiskey,Scotland,2016,4.4,10.0,false,9.7");
  println("y,6045,White wine,Florence,Italy,2017,2.2,5.0,false,8.2");
      //println("Updating data");
      if ( db.connect() ) {
      //  // list table names
      //  db.query( "SELECT name as \"Name\" FROM SQLITE_MASTER where type=\"table\"" );
        db.query("INSERT INTO winedata (time,white,red,green,blue,violate,purple,yellow,mass,temperature,created_at,updated_at) VALUES (" + str(count++) + ',' + white + ',' + red + ',' + green + ',' + blue + ',' + violate + ',' + purple + ',' + yellow + ',' + mass + ',' + temperature + ",datetime('now'),datetime('now'))");
        println("Data updated!");
      //  while (db.next())
      //  {
      //    println( db.getString("Name") );
      //  }
        
      //  // read all in table "wines"
      //  db.query( "SELECT * FROM wines" );
        
      //  while (db.next())
      //  {
      //    println( db.getInt("Id") );
      //    println( db.getString("Name") );
      //    println( db.getFloat("Status") );
      //    println( db.getFloat("Abv") );
      //    println( db.getString("Origin") );
      //  }
      }
    }