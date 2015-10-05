module PerformerSessionsHelper

	def login(performer)     
		session[:performer_id] = performer.id     
		@current_performer = performer   
	end    

	def current_performer     
		@current_performer ||= ( session[:performer_id].nil? ? false : Performer.find(session[:performer_id]) )   
	end    

	def logged_in?     
		if current_performer == nil       
		   redirect_to "/performer_sessions/new"     
		end   
	end    

	def logout     
		@current_performer = session[:performer_id] = nil   
	end


end
