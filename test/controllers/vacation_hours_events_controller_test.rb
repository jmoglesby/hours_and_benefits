require 'test_helper'

class VacationHoursEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacation_hours_event = vacation_hours_events(:one)
  end

  test "should get index" do
    get vacation_hours_events_url
    assert_response :success
  end

  test "should get new" do
    get new_vacation_hours_event_url
    assert_response :success
  end

  test "should create vacation_hours_event" do
    assert_difference('VacationHoursEvent.count') do
      post vacation_hours_events_url, params: { vacation_hours_event: { vacation_hours_adj_date: @vacation_hours_event.vacation_hours_adj_date, vacation_hours_gained: @vacation_hours_event.vacation_hours_gained, vacation_hours_used: @vacation_hours_event.vacation_hours_used } }
    end

    assert_redirected_to vacation_hours_event_url(VacationHoursEvent.last)
  end

  test "should show vacation_hours_event" do
    get vacation_hours_event_url(@vacation_hours_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacation_hours_event_url(@vacation_hours_event)
    assert_response :success
  end

  test "should update vacation_hours_event" do
    patch vacation_hours_event_url(@vacation_hours_event), params: { vacation_hours_event: { vacation_hours_adj_date: @vacation_hours_event.vacation_hours_adj_date, vacation_hours_gained: @vacation_hours_event.vacation_hours_gained, vacation_hours_used: @vacation_hours_event.vacation_hours_used } }
    assert_redirected_to vacation_hours_event_url(@vacation_hours_event)
  end

  test "should destroy vacation_hours_event" do
    assert_difference('VacationHoursEvent.count', -1) do
      delete vacation_hours_event_url(@vacation_hours_event)
    end

    assert_redirected_to vacation_hours_events_url
  end
end
