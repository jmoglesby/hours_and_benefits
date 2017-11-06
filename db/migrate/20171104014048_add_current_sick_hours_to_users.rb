class AddCurrentSickHoursToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_sick_hours, :decimal
  end
end
