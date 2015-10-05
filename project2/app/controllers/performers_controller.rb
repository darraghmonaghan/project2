class PerformersController < ApplicationController

def index
		@performers = Performer.all
		# @performer = Performer.find_by_id(params[:id])
		# @category = Category.find_by_id(@performer.category)
	end

	def new
		@performer = Performer.new
	end

	def create
		@performer = Performer.create(performer_params)
		redirect_to "/performers/#{@performer.id}"
	end

	def show
		@performer = Performer.find_by_id(params[:id])
		@category = Category.find_by_id(@performer.category)
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
    	@performer = Performer.find(params[:id])    
      		if @performer.update(performer_params)
         		redirect_to performer_path(@performer)
      		else
        		render :edit
      		end
  	end

	def destroy
	end

	private
	def performer_params
		params.require(:performer).permit(:performer_name, :email, :password, :city, :category_id, :performer_subcategory, :hourly_rate, :description)
	end


end
