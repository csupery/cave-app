class ChangeVintages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :vintages, :castle, index: true, foreign_key: true
  end
end
