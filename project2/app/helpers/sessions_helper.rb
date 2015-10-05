module SessionsHelper
	def login(client)
    session[:client_id] = client.id
    @current_client = client
  end

  def current_client
    @current_client ||= Client.find_by_id(session[:client_id])
  end

  def logged_in?
    if @current_client == nil
      redirect_to "/sessions/new"
    end
  end

  def destroy
    @current_client = session[:client_id] = nil
  end
end
