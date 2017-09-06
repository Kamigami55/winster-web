class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.float :status
      t.float :abv
      t.string :origin
      t.date :brewdate
      t.integer :age
      t.date :keepdate
      t.float :score
      t.float :weight
      t.float :taste
      t.string :imgurl
      t.timestamps
    end
  end
end
