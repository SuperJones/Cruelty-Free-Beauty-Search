class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :sku, limit: 10
      t.decimal :price, precision: 10, scale: 2
      t.string :link
      t.boolean :cruelty_free
      t.boolean :vegan
      t.references :brand, foreign_key: true

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :sku, unique: true
  end
end
