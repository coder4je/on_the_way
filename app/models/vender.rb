class Vender < ApplicationRecord
  has_many :deliveries
  has_many :orders, through: :deliveries

  has_many :materials
  has_many :receivers, through: :materials
end
