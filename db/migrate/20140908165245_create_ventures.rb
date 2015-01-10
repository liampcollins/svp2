class CreateVentures < ActiveRecord::Migration
  def change
    create_table :ventures do |t|
      t.string :name
      t.string :sector
      t.string :location
      t.text :description
      t.integer :founded
      t.text :founder
      t.string :org_type
      t.integer :num_employees

      t.timestamps
    end
  end
end
