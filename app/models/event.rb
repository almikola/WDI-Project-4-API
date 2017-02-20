class Event < ApplicationRecord
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  has_many :invitations

  def accepted_invitations
    invitations.where(status: "accepted")
  end

  def rejected_invitations
    invitations.where(status: "rejected")
  end

  def pending_invitations
    invitations.where(status: "pending")
  end
end
