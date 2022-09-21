class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :name, :admin_id, :order_id, :vender_id
end
