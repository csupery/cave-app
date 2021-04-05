class AddAppellationToCastle < ActiveRecord::Migration[6.0]
  def change
    add_reference :castles, :appellation, null: false, foreign_key: true
  end
end
