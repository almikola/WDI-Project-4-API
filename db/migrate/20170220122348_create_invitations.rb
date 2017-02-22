class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.integer :receiver_id
      t.integer :sender_id
      t.references :event, foreign_key: true
      t.string :status
      t.string :invitation_lat
      t.string :invitation_lng
      t.timestamps
    end
  end
end
