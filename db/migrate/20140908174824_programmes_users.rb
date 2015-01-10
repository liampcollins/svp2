class ProgrammesUsers < ActiveRecord::Migration
  def change
    create_table :programmes_users, id: false do |t|
      t.integer :programme_id
      t.integer :user_id
    end
  end
end
