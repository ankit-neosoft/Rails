class User < ActiveRecord::Base
	has_many :orders
	has_one :contact, as: :contactable
end
