class Performer < ActiveRecord::Base

	has_secure_password

	### I suggest we consider changing Performer model - to just include Performer / Group Name ###
	validates :city, :rate, :description, presence: true
	validates :email, :instagram, uniqueness: true 

	belongs_to :category

	def self.confirm(params)
	    @performer = Performer.find_by({email: params[:email]})
	    @performer.try(:authenticate, params[:password])
	end


end
