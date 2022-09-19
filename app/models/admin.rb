class Admin < ApplicationRecord
  has_many :deliveries
  has_many :orders, through: :deliveries
end
