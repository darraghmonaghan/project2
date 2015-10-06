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

	has_attached_file :avatar, styles: { thumb: "100x100!" }, :default_style => :thumb, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image1, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image2, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image3, content_type: /\Aimage\/.*\Z/

	def self.confirm(params)
	    @performer = Performer.find_by({email: params[:email]})
	    @performer.try(:authenticate, params[:password])
	end


end
