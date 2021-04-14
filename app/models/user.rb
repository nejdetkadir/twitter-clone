class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # validates
  validates :fullname, presence: true, length: {minimum: 3, maximum: 30}
  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates :location, length: {maximum: 20}
  # validates :website, format: {with: /(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})/, message: "Please check your URL" }
  validates :bio, length: {maximum:160}

  # mounts
  mount_uploader :profile_picture, ProfilePictureUploader
  mount_uploader :profile_background_picture, ProfileBackgroundUploader

  # associations
  has_friendship
  has_many :tweets
  
  # callbacks
  def on_friendship_created(friendship)
  end
  
  def on_friendship_accepted(friendship)
  end
  
  def on_friendship_blocked(friendship)
  end
  
  def on_friendship_destroyed(friendship)
  end
end