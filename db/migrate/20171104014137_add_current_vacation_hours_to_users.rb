class AddCurrentVacationHoursToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_vacation_hours, :decimal
  end
end
