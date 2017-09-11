class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.integer :label
      t.string :wine
      t.string :status
      t.timestamps
    end
  end
end
