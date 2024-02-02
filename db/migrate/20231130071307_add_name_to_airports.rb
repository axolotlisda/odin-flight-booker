class AddNameToAirports < ActiveRecord::Migration[7.1]
  def change
    add_column :airports, :name, :string
  end
end
