class Receiver < ApplicationRecord
  has_secure_password

  has_many :materials
  has_many :vender, through: :materials

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
