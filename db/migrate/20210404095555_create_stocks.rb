class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :quantity
      t.references :vintage, null: false, foreign_key: true
      t.integer :size

      t.timestamps
    end
  end
end
