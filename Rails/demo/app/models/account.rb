class Account < ActiveRecord::Base
	validates :name, :presence => true
	validates :email, :presence=>true, on: :create, :confirmation=>true, format: {with: /([a-z0-9+_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,24})/}, uniqueness: true
 	 
 	validates_confirmation_of :email_confirmation
 	validates :need_estatement, inclusion: {in: %w(yes no Yes No),
 		message: "Please Enter only yes or no"}
 	validates :terms_of_service, :presence => {  :message =>'must be abided'}
end
