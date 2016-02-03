class CreateProjectImages < ActiveRecord::Migration

		def change
		  create_table :project_images do |t|
		  t.references :gallery
		
		end
	end
end
