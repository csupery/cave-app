class CreateVintages < ActiveRecord::Migration[6.0]
  def change
    create_table :vintages do |t|
      t.integer :year
      t.references :castle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
