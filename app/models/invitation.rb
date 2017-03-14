class Invitation < ApplicationRecord
  STATUSES = %w(accepted pending rejected cancelled)

  belongs_to :event
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"

  before_before_validation :set_sender
  before_validation :set_default_status

  validate :check_status

  private

    def set_sender
      self.sender = self.event.owner
    end

    def set_default_status
      self.status = "pending" if self.status.nil?
    end

    def check_status
      if !STATUSES.include? self.status
        errors.add(:status, "Status is not correct.")
      end
    end
end
