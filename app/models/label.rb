class Label < ActiveRecord::Base

  has_many :project_labels
  has_many :projects, :through => :project_labels
validates_presence_of :name

end
