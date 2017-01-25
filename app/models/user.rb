class User < ApplicationRecord
  validates :email, :username, :password, { :presence => true }
  validates :email, :username, { :uniqueness => true }
  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password
  has_secure_password
end
