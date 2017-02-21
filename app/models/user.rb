class User < ApplicationRecord
  has_secure_password
  has_many :events, foreign_key: :owner_id, class_name: "Event"
  has_many :received_invitations, foreign_key: :receiver_id, class_name: "Invitation"
  validates :email, presence: true, uniqueness: true
end
