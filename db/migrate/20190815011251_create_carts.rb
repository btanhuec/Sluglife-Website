class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.decimal :subtotal
      t.references :carteditem, foreign_key: true

      t.timestamps
    end
  end
end
