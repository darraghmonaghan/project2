class Performer < ActiveRecord::Base

	has_secure_password

	### I suggest we consider changing Performer model - to just include Performer / Group Name ###
	validates :performer_name, :email, :password_digest, :city, :hourly_rate, :description, presence: true
	# performers must have unique names and email addresses
	validates_uniqueness_of :performer_name, :email
	validates :password, length: {minimum: 1}
	validates :description, length: {maximum: 500}
	# validates :email, :instagram, uniqueness: true 

	belongs_to :category

	def self.confirm(params)
	    @performer = Performer.find_by({email: params[:email]})
	    @performer.try(:authenticate, params[:password])
	end


end
