class Programme < ActiveRecord::Base
  attr_accessible :description, :duration, :founded, :funding_offered, :location, :name, :prog_type, :website_url, :next_prog, :prog_image, :continent, :country, :city, :long, :lat

  has_and_belongs_to_many :users
  has_and_belongs_to_many :ventures

  mount_uploader :prog_image, ProgImageUploader

  # mount_uploader :prog_image, ProgImageUploader
end
