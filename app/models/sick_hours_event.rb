class SickHoursEvent < ApplicationRecord
  validates :sick_hours_gained, :sick_hours_used, :sick_hours_adj_date, presence: true

  scope :this_year, -> { where('sick_hours_adj_date >= ?', Time.now.beginning_of_year.to_date) }
end
