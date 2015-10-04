class ClientsController < ApplicationController

def index
		@clients = Client.all
    render :index
	end

def show
  id = params[:id]
  @client = Client.find(params[:id])

  render :show
  end

	def new
		@client = Client.new
    render :new
	end

	def create
		client_params = params.require(:client).permit(:firstname, :lastname, :email, :password)
    
    @client = Client.create(client_params)
    redirect_to("/clients/#{@client.id}" )
	end



	def edit #has views
    id = params[:id]
      @client = Client.find(id)
      render :edit
      
  end

	def update
		@client = Client.find(params[:id])
  if @client.update(client_params)
    redirect_to("/clients/#{@client.id}" )
  else 
    render :edit
  	end
  end

  def client_params
      params.require(:client).permit(:firstname, :last)
    end
end
  


	def destroy
	end

	