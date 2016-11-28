class Account < ActiveRecord::Base

	after_destroy :log_destroy_action

	def log_destroy_action
		puts 'Article destroyed'
	end






	validates :name, :presence => true
	before_create do
		self.name = name.capitalize.titleize unless name.blank?
	end

	validates :email, :presence=>true, on: :create, :confirmation=>true, format: {with: /([a-z0-9+_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,24})/}
 	 
 	validates_confirmation_of :email_confirmation
 	before_validation :ensure_email_confirmation_has_a_value, :normalize_email

	
 	validates :need_estatement, inclusion: {in: %w(yes no Yes No),
 		message: "Please Enter only yes or no"}
 	validates :terms_of_service, :presence => {  :message =>'must be abided'}


after_touch do |user|
    puts "You have touched an object"
  end







protected
	def ensure_email_confirmation_has_a_value
		if email_confirmation.empty?
			self.email_confirmation = email.downcase unless email.blank?
		end
	end

	def normalize_email
		self.email = self.email.downcase
	end

end
