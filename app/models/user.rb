require 'bcrypt'

class User < ActiveRecord::Base

  has_many :posts
  has_many :comments
  has_many :downvotes
  has_many :upvotes

  # validates :username, :password, presence: true

  has_secure_password

  # def password
  #   BCrypt::Password.new(hashed_password)
  # end
  #
  # def password=(new_password)
  #   self.hashed_password = BCrypt::Password.create(new_password)
  # end
  #
  # def self.authenticate(username, password)
  #   user = User.find_by(username: username)
  #   if user.password == password
  #     user
  #   else
  #     nil
  #   end
  # end

end
