class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.string :location
      t.integer :zip_code
      t.string :body
      t.string :contact

      t.timestamps
    end
  end
end
