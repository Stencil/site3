ActiveAdmin.register Project do
  permit_params :title, :description, :year, :images, project_labels_attributes: [:id, :name, :project_id, :label_id, :_destroy]
    


  controller do 
    def create
      
      @images =  params[:project][:images]
      params[:project].delete(:images)
      @project = Project.new(params[:project])
      if @project.save
        
        if @images
          @images.each do |img|
            @project.gallery.project_images.create(image: img)
            
          end
          
        end
        
      end
    end
  end

  show do |project|
    attributes_table do
      row :label do |project|
        project.labels.map { |d| d.name }.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Projects" do
      f.has_many :project_labels do |deg|
        deg.input :label
      end
      f.input :title
      f.input :description
      f.input :year


 
      
      end
      f.input "images", as: :file, input_html: {multiple: true}
    f.actions
  end
  end

