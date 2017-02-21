class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :received_invitations
  has_many :events
end
