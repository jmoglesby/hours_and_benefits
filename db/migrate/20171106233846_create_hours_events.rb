class CreateHoursEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :hours_events do |t|
      t.decimal :hours_worked
      t.date :hours_worked_date

      t.timestamps
    end
  end
end
