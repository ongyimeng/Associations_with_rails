class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    remove_column :event_attendings, :attendee_id, :string
    add_column :event_attendings, :event_attendee_id, :string
  end
end
