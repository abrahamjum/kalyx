class CreateWeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :weeds do |t|
      t.string :name, null: false
      t.string :strain
      t.integer :price, null: false
      t.string :sku
      t.string :type

      t.timestamps
    end
  end
end
