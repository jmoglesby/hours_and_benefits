class CreateSickHoursEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :sick_hours_events do |t|
      t.decimal :sick_hours_used
      t.decimal :sick_hours_gained
      t.date :sick_hours_adj_date

      t.timestamps
    end
  end
end
