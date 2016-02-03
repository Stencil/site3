class Gallery < ActiveRecord::Base
	has_many :project_images, dependent: :destroy
	belongs_to :project

end
