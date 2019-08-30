class CreateCartedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :carted_items do |t|
      t.integer :quantity
      t.string :size
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
