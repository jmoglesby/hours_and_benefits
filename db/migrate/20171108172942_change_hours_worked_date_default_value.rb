class ChangeHoursWorkedDateDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column_default :hours_events, :hours_worked_date, DateTime.now
  end
end
