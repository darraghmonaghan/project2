class Client < ActiveRecord::Base

	has_secure_password
	has_many :reviews


	def self.confirm(params)
	    @client = Client.find_by({email: params[:email]})
	    @client.try(:authenticate, params[:password])
	end


end
