class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :name
      t.string :prog_type
      t.text :description
      t.string :cs_image
      t.string :location

      t.timestamps
    end
  end
end
