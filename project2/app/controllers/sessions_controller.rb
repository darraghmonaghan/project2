class SessionsController < ApplicationController
  def new
  	@client = Client.new
  end

  def create
    @client = Client.confirm(params[:client])
    if @client
      login(@client)
      redirect_to "/clients/#{@client.id}"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    # logout
    session[:client_id] = nil
    redirect_to root_path
  end
end
