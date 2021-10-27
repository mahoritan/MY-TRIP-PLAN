class AddScheduleTimeToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :schedule_time, :datetime
  end
end
