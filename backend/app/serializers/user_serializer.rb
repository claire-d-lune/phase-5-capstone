class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :image_url, :password_digest
end
