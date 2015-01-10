class AddCityToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :city, :string
  end
end
