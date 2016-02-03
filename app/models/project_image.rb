class ProjectImage < ActiveRecord::Base
	belongs_to :gallery
	has_attached_file :image, styles: {medium:"200x200", small:"50x50"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
