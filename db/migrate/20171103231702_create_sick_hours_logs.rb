class CreateSickHoursLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :sick_hours_logs do |t|
      t.decimal :sick_hours_entry
      t.date :date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
