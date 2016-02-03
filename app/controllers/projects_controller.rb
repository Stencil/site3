class ProjectsController < ApplicationController


  def create
  end

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
  end

  private
  def project_params
    require(:project).permit(:title,:description,:year)
  end
end