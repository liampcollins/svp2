class AddTitleToVentures < ActiveRecord::Migration
  def change
    add_column :ventures, :title, :string
  end
end
