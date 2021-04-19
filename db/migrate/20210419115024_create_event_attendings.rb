class CreateEventAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendings do |t|
      t.string :attended_event_id
      t.string :attendee_id

      t.timestamps
    end
  end
end
