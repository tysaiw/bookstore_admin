class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :abstract
      t.integer :num_pages
      t.integer :price

      t.timestamps
    end
  end
end
