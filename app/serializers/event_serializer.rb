class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :owner_id
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  has_many :invitations
end
