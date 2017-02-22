class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :receiver, :sender, :event, :invitation_lat, :invitation_lng
  belongs_to :event
end

def receiver
  UserSerializer.new(self.receiver_id).attributes
end

def sender
  UserSerializer.new(self.sender_id).attributes
end
