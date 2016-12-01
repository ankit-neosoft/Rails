class Order < ActiveRecord::Base
	belongs_to :customer, dependent: :destroy
	has_many :images, as: :imageable
end
