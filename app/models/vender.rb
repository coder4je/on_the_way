class Vender < ApplicationRecord
  has_secure_password

  has_many :deliveries
  has_many :orders, through: :deliveries

  has_many :materials
  has_many :receivers, through: :materials

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
