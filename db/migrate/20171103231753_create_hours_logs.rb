class CreateHoursLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :hours_logs do |t|
      t.decimal :hours_worked
      t.date :date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
