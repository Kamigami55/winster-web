class CreateWinedatabases < ActiveRecord::Migration[5.1]
  def change
    create_table :winedatabases do |t|
	  t.string :type
	  t.string :name
	  t.float :weight
	  t.float :alc
	  t.float :white
	  t.float :red
	  t.float :green
	  t.float :blue
	  t.float :violate
	  t.float :purple
	  t.float :yellow
	  t.float :temperature_low
	  t.float :temperature_high
	  t.string :bottlecolor
	  t.string :origin
	  t.date :brewdate
	  t.integer :age
	  t.float :score
	  t.string :imgurl
      t.timestamps
    end
  end
end
