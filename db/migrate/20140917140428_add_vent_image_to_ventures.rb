class AddVentImageToVentures < ActiveRecord::Migration
  def change
    add_column :ventures, :vent_image, :string
  end
end
