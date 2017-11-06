class RemoveUserIdFromVacationHoursLogs < ActiveRecord::Migration[5.1]
  def change
    remove_index :vacation_hours_logs, :user_id
    remove_column :vacation_hours_logs, :user_id, :integer
  end
end
