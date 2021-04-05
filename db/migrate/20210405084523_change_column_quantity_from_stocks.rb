class ChangeColumnQuantityFromStocks < ActiveRecord::Migration[6.0]
  def change
    change_column :stocks, :quantity, :integer, :null => false, :default => 0
  end
end
