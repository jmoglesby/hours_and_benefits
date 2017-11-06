require 'test_helper'

class SickHoursEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sick_hours_event = sick_hours_events(:one)
  end

  test "should get index" do
    get sick_hours_events_url
    assert_response :success
  end

  test "should get new" do
    get new_sick_hours_event_url
    assert_response :success
  end

  test "should create sick_hours_event" do
    assert_difference('SickHoursEvent.count') do
      post sick_hours_events_url, params: { sick_hours_event: { sick_hours_adj_date: @sick_hours_event.sick_hours_adj_date, sick_hours_gained: @sick_hours_event.sick_hours_gained, sick_hours_used: @sick_hours_event.sick_hours_used } }
    end

    assert_redirected_to sick_hours_event_url(SickHoursEvent.last)
  end

  test "should show sick_hours_event" do
    get sick_hours_event_url(@sick_hours_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_sick_hours_event_url(@sick_hours_event)
    assert_response :success
  end

  test "should update sick_hours_event" do
    patch sick_hours_event_url(@sick_hours_event), params: { sick_hours_event: { sick_hours_adj_date: @sick_hours_event.sick_hours_adj_date, sick_hours_gained: @sick_hours_event.sick_hours_gained, sick_hours_used: @sick_hours_event.sick_hours_used } }
    assert_redirected_to sick_hours_event_url(@sick_hours_event)
  end

  test "should destroy sick_hours_event" do
    assert_difference('SickHoursEvent.count', -1) do
      delete sick_hours_event_url(@sick_hours_event)
    end

    assert_redirected_to sick_hours_events_url
  end
end
