class Client < ActiveRecord::Base

	has_secure_password
	has_many :reviews

	validates :email, :firstname, :lastname, presence: true
	validates :email, uniqueness: true
	validates :password, presence: true, length: { minimum: 6 } 


	def self.confirm(params)
	    @client = Client.find_by({email: params[:email]})
	    @client.try(:authenticate, params[:password])
	end


end
