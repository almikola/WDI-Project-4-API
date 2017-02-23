class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :image

  has_many :received_invitations
  has_many :events
end
