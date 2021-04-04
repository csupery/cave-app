class RemoveColumnFromCastles < ActiveRecord::Migration[6.0]
  def change
    remove_column :castles, :country
  end
end
