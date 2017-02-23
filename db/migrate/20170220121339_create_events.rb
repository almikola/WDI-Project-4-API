class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :image
      t.integer :owner_id

      t.timestamps
    end
  end
end
