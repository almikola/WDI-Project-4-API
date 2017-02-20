class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :owner_id
end
