class Driver < ApplicationRecord
  has_secure_password

  has_many :materials

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
