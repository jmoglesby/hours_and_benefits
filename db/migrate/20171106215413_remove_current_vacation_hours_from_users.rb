class RemoveCurrentVacationHoursFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :current_vacation_hours, :decimal
  end
end
