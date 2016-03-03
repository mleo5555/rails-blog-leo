class Post < ActiveRecord::Base
  has_many :comments
  has_many :downvotes
  has_many :upvotes
  belongs_to :user

  # validates :title, :content, :user_id, presence: true
end
