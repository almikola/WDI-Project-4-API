class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :receiver_id, :status
  has_one :event
end
