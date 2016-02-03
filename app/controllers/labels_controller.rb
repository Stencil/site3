class LabelsController < ApplicationController
def label_params
      params.require(:label).permit(:name)
    end

    def index
		@labels = Label.all
	end

	 def show
		@label = Label.find(params[:id])
	end
end