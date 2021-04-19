class ChangeDateName < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :date, :date
    add_column :events, :event_date, :date
  end
end
