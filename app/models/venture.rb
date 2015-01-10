class Venture < ActiveRecord::Base
  attr_accessible :description, :founded, :founder, :location,  :title, :name, :num_employees, :org_type, :sector, :vent_image

  has_and_belongs_to_many :users
  has_and_belongs_to_many :programmes

  mount_uploader :vent_image, ProgImageUploader

end
