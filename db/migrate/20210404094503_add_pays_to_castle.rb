class AddPaysToCastle < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :pays, :string
  end
end
