class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :price
      t.string :family
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
