class AddColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :integer, :string
  end
end
