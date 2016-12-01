class Customer < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_one :account, foreign_key: 'user_id'

  # has_many :images, class_name: 'Picture', as: :imageable
  # has_many :pictures, as: :imageable
  has_many :images, -> { where file_type: 'image'}, class_name: 'Attachment', as: :attachable
  has_many :audios, -> { where file_type: 'audio'}, class_name: 'Attachment', as: :attachable
end