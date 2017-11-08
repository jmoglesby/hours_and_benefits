class DashboardController < ApplicationController
  def index
    @hours_events = HoursEvent.all
    @hours_this_week = @hours_events.this_week.sum(:hours_worked)
    @hours_yesterday = @hours_events.yesterday.sum(:hours_worked)

    @sick_hours_events = SickHoursEvent.all
    @available_sick_hours = @sick_hours_events.sum(:sick_hours_gained) - @sick_hours_events.sum(:sick_hours_used)
    @sick_hours_events_this_year = @sick_hours_events.this_year
    @sick_hours_used_this_year = @sick_hours_events_this_year.sum(:sick_hours_used)

    @vacation_hours_events = VacationHoursEvent.all
    @available_vacation_hours = @vacation_hours_events.sum(:vacation_hours_gained) - @vacation_hours_events.sum(:vacation_hours_used)
    @vacation_hours_events_this_year = @vacation_hours_events.this_year
    @vacation_hours_used_this_year = @vacation_hours_events_this_year.sum(:vacation_hours_used)

    
  end
end

