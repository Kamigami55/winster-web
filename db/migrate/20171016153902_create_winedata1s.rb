class CreateWinedata1s < ActiveRecord::Migration[5.1]
  def change
    create_table :winedata1s do |t|
	  t.string :time
	  t.float :white
	  t.float :red
	  t.float :green
	  t.float :blue
	  t.float :violate
	  t.float :purple
	  t.float :yellow
	  t.float :mass
	  t.float :temperature
      t.timestamps
    end
  end
end
