class VenderSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :category, :location
end
