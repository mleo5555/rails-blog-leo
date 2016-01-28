class Downvote < ActiveRecord::Base
  belongs_to :users
  belongs_to :posts

  # validates :user_id, :post_id, presence: true
end
