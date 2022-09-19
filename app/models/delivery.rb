class Delivery < ApplicationRecord
  belongs_to :admin
  belongs_to :order
  belongs_to :vender
end
