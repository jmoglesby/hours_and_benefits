class RemoveIndexUserIdFromSickHoursLogs < ActiveRecord::Migration[5.1]
  def change
    remove_index :sick_hours_logs, :user_id
    remove_column :sick_hours_logs, :user_id, :integer
  end
end
