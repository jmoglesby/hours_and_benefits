class VacationHoursEvent < ApplicationRecord
  validates :vacation_hours_used, :vacation_hours_gained, :vacation_hours_adj_date, presence: true

  scope :this_year, -> { where('vacation_hours_adj_date >= ?', Time.now.beginning_of_year.to_date) }
end
