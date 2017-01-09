class Post < ActiveRecord::Base

  attr_accessor :avatar

	belongs_to :user
	validates :content, presence: true

	default_scope -> {order(created_at: :desc)}
  has_many :comments, dependent: :destroy
  has_many :retweets, class_name: "Post", foreign_key: "retweet_id"
  belongs_to :parent, class_name: 'Post', foreign_key: "retweet_id"
  mount_uploader :avatar, AvatarUploader
  ## Scopes
  ##scope :tweets, -> { where(retweet_id: nil) }

end
