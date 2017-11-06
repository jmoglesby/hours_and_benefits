require 'test_helper'

class HoursEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hours_event = hours_events(:one)
  end

  test "should get index" do
    get hours_events_url
    assert_response :success
  end

  test "should get new" do
    get new_hours_event_url
    assert_response :success
  end

  test "should create hours_event" do
    assert_difference('HoursEvent.count') do
      post hours_events_url, params: { hours_event: { hours_worked: @hours_event.hours_worked, hours_worked_date: @hours_event.hours_worked_date } }
    end

    assert_redirected_to hours_event_url(HoursEvent.last)
  end

  test "should show hours_event" do
    get hours_event_url(@hours_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_hours_event_url(@hours_event)
    assert_response :success
  end

  test "should update hours_event" do
    patch hours_event_url(@hours_event), params: { hours_event: { hours_worked: @hours_event.hours_worked, hours_worked_date: @hours_event.hours_worked_date } }
    assert_redirected_to hours_event_url(@hours_event)
  end

  test "should destroy hours_event" do
    assert_difference('HoursEvent.count', -1) do
      delete hours_event_url(@hours_event)
    end

    assert_redirected_to hours_events_url
  end
end
