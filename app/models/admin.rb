class Admin < ApplicationRecord
  has_secure_password

  has_many :deliveries
  has_many :orders, through: :deliveries

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
