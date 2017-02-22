class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :accepted_invitations
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  has_many :invitations
end
