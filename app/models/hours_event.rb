class HoursEvent < ApplicationRecord
  validates :hours_worked, :hours_worked_date, presence: true
  
  scope :this_week, -> { where('hours_worked_date >= ?', Time.now.beginning_of_week.to_date) }
  scope :yesterday, -> { where('hours_worked_date = ?', Time.now.yesterday.to_date) }
end
