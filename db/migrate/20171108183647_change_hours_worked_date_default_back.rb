class ChangeHoursWorkedDateDefaultBack < ActiveRecord::Migration[5.1]
  def change
    change_column_default :hours_events, :hours_worked_date, nil
  end
end
