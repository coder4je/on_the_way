class Material < ApplicationRecord
  has_many :schedules
  
  belongs_to :vender
  belongs_to :receiver
  belongs_to :driver
end
