class AddProgImageToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :prog_image, :string
  end
end
