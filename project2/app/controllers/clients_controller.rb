class ClientsController < ApplicationController

def index
		@client = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		client_params = params.require(:client).permit(:firstname, :lastname, :email, :password)
		@client = Client.create(client_params)
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
		@client = Client.friendly.find(params[:id])
    		if @client.id == current_user.id
        		render :edit
    		else
        		redirect_to root_path
    		end
  	end

	def update
		client_params = params.require(:client).permit(:firstname, :lastname, :email, :password)
    	@client = Client.find(params[:id])    
      		if @client.update(client_params)
         		redirect_to client_path(@client)
      		else
        		render :edit
      		end
  	end


	def destroy
	end


	
end
