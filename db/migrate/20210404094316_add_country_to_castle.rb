class AddCountryToCastle < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :country, :string
  end
end
