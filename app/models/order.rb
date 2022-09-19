class Order < ApplicationRecord
  has_many :deliveries
  has_many :venders, through: :deliveries
end
