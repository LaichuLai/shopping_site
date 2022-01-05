class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.string :spec
      t.integer :quantity
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :stocks, :deleted_at
  end
end
