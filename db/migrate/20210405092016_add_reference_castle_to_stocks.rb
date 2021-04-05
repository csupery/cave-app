class AddReferenceCastleToStocks < ActiveRecord::Migration[6.0]
  def change
    add_reference :stocks, :castle, null: false, foreign_key: true
  end
end
