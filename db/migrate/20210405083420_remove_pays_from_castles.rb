class RemovePaysFromCastles < ActiveRecord::Migration[6.0]
  def change
    remove_column :castles, :pays
  end
end
