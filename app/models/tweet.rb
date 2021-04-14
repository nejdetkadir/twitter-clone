class Tweet < ApplicationRecord
  belongs_to :user

  # validates
  validates :content, presence: true, length: {maximum: 280} 

  # mounts
  mount_uploaders :images, TweetImageUploader
end