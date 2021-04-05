class RemoveAppellationFromCastles < ActiveRecord::Migration[6.0]
  def change
    remove_column :castles, :appellation
  end
end
