class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :name
      t.text :description
      t.string :prog_type
      t.string :location
      t.string :duration
      t.integer :funding_offered
      t.string :website_url
      t.integer :founded
      t.date :next_prog

      t.timestamps
    end
  end
end
