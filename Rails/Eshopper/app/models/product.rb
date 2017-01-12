class Product < ActiveRecord::Base
  has_many :pictures, as: :imageable
  belongs_to :category
end
