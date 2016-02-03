class Project < ActiveRecord::Base
  has_one :gallery

  has_many :project_labels
  has_many :labels, :through => :project_labels
  accepts_nested_attributes_for :project_labels, :allow_destroy => true
  # has_attached_file :image, styles: {medium:"200x200", small:"50x50"}
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  after_save :create_gallery

  def create_gallery
       self.gallery.create
  end
end
