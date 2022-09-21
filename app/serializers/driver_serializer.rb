class DriverSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest
end
