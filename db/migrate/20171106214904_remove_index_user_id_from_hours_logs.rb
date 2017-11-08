class RemoveIndexUserIdFromHoursLogs < ActiveRecord::Migration[5.1]
  def change
    remove_index :hours_logs, :user_id
    remove_column :hours_logs, :user_id, :integer
  end
end