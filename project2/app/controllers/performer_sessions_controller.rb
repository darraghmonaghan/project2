class PerformerSessionsController < ApplicationController
  def new
  	@performer = Performer.new
  	render :new
  end

  def create
  	@performer = Performer.confirm(params[:performer])
  	if @performer
  		login(@performer)
      redirect_to performer_path(@performer)
  	else
  		redirect_to performer_login_path
  	end
  end

  def destroy
  	session[:performer_id] = nil
  	redirect_to root_path
  end
end
