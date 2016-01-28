class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :downvotes
  has_many :upvotes
  
  # validates :username, :password, presence: true
end
