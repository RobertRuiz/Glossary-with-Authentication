class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :pasword, length: { in: 6..100 }
  has_secure_password
end
