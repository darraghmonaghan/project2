class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

<<<<<<< HEAD
  include SessionsHelper
=======
  include PerformerSessionsHelper
  
>>>>>>> 4e37c47854226b0cbcdb49e814c363d44d36388e
end
