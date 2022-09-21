class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :name, :vender_id, :receiver_id, :driver_id
end
