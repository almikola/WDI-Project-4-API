class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :events, foreign_key: :owner_id, class_name: "User"
  has_many :received_invitations, foreign_key: :receiver_id, class_name: "Invitation"
end
