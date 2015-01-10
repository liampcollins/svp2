class AddContinentToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :continent, :string
  end
end
