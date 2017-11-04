class CreateVacationHoursLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :vacation_hours_logs do |t|
      t.decimal :vacation_hours_entry
      t.date :date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
