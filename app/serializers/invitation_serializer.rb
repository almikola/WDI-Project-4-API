class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :receiver
  belongs_to :event
end

def receiver
  UserSerializer.new(self.receiver_id).attributes
end
