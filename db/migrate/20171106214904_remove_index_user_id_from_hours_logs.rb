class RemoveIndexUserIdFromHoursLogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :hours_logs, :user_id, :integer
  end
end
