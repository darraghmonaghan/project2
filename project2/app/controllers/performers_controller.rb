class PerformersController < ApplicationController

def index
		@performer = Performer.all
	end

	def new
		@performer = Performer.new
	end

	def create
		performer_params = params.require(:performer).permit(:city, :firstname, :lastname, :group, :category_id, :rate, :performer_subcategory, :description, :instagram, :youtube)
		@performer = Performer.create(performer_params)
	end

	def show
		@performer = Performer.find(params[:id])
	end

	def edit
		@performer = Performer.friendly.find(params[:id])
    		if @performer.id == current_user.id
        		render :edit
    		else
        		redirect_to root_path
    		end
  	end

	def update
		performer_params = params.require(:performer).permit(:city, :firstname, :lastname, :group, :category_id, :rate, :performer_subcategory, :description, :instagram, :youtube)
    	@performer = Performer.find(params[:id])    
      		if @performer.update(performer_params)
         		redirect_to performer_path(@performer)
      		else
        		render :edit
      		end
  	end


	def destroy
	end


end
