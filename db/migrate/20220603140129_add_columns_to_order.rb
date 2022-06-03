class AddColumnsToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :name, :string
    add_column :orders, :card_number, :string
    add_column :orders, :card_code, :integer
    add_column :orders, :card_expiration, :string
  end
end
