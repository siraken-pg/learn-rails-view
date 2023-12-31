class User < ApplicationRecord
  has_secure_password

  :validate :email, presence: true, uniqueness: true
  :username, presence: true, uniqueness: true
end
