class AddLatAndLongToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :lat, :string
    add_column :programmes, :long, :string
  end
end
