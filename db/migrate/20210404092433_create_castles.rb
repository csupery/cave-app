class CreateCastles < ActiveRecord::Migration[6.0]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :appellation
      t.string :country

      t.timestamps
    end
  end
end
