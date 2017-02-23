class Event < ApplicationRecord
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  has_many :invitations

  before_create :set_default_active

  def accepted_invitations
    invitations.where(status: "accepted")
  end

  def rejected_invitations
    invitations.where(status: "rejected")
  end

  def pending_invitations
    invitations.where(status: "pending")
  end

  private
  def set_default_active
    self.active = 'yes'
  end


end
