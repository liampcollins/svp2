class AddWebsiteUrlToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :webiste_url, :string
  end
end
