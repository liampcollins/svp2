class AddCountryToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :country, :string
  end
end
