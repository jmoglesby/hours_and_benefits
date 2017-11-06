class DropFirstThoughtTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :hours_logs
    drop_table :sick_hours_logs
    drop_table :vacation_hours_logs
  end
end
