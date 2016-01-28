class Comment < ActiveRecord::Base
  belongs_to :users
  belongs_to :posts

  # validates :content, :user_id, :post_id, presence: true
end
