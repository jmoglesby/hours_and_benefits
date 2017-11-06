class CreateVacationHoursEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :vacation_hours_events do |t|
      t.decimal :vacation_hours_used
      t.decimal :vacation_hours_gained
      t.date :vacation_hours_adj_date

      t.timestamps
    end
  end
end
