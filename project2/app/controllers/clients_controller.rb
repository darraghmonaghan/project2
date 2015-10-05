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
    @client = Client.find(params[:id])
    puts 'Client is present:' + @client.firstname
      #id = params[:id]
      #@client = Client.find(id)
      # render :edit
      
  end

  def update
    client_id = params[:id]
      client = Client.find(client_id)
      # get updated data
      updated_attributes = params.require(:client).permit(:firstname, :lastname)
      # update the client
      client.update_attributes(updated_attributes)
      #redirect to show
      redirect_to "/clients/#{client.id}"  # <-- go to show
  end

  
end
  


  def destroy
  end