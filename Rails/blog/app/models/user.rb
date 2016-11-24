class User < ActiveRecord::Base
	validates :login, :email, presence: true

	before_validation :ensure_login_has_a_value

	protected
	def ensure_login_has_a_value
		if login.nil?
			self.login  = email unless email.blank?
		end
	end
end
