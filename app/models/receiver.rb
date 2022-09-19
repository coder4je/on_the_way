class Receiver < ApplicationRecord
  has_many :materials
  has_many :vender, through: :materials
end
