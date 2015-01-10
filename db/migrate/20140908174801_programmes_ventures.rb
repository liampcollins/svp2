class ProgrammesVentures < ActiveRecord::Migration
  def change
    create_table :programmes_ventures, id: false do |t|
      t.integer :programme_id
      t.integer :venture_id
    end
  end
end
