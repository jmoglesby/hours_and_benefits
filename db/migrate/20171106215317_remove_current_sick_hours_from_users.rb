class RemoveCurrentSickHoursFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :current_sick_hours, :decimal
  end
end
