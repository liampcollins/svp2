class UsersVentures < ActiveRecord::Migration
  def change
    create_table :users_ventures, id: false do |t|
      t.integer :user_id
      t.integer :venture_id
    end
  end
end
