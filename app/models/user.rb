class User < ApplicationRecord

  validates :name, presence: true

  validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 } 

  validates :password, presence: true
  has_secure_password
end
