class ReceiverSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :location
end
