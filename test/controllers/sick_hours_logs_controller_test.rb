require 'test_helper'

class SickHoursLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sick_hours_log = sick_hours_logs(:one)
  end

  test "should get index" do
    get sick_hours_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_sick_hours_log_url
    assert_response :success
  end

  test "should create sick_hours_log" do
    assert_difference('SickHoursLog.count') do
      post sick_hours_logs_url, params: { sick_hours_log: { sick_hours_entry: @sick_hours_log.sick_hours_entry, user_id: @sick_hours_log.user_id } }
    end

    assert_redirected_to sick_hours_log_url(SickHoursLog.last)
  end

  test "should show sick_hours_log" do
    get sick_hours_log_url(@sick_hours_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_sick_hours_log_url(@sick_hours_log)
    assert_response :success
  end

  test "should update sick_hours_log" do
    patch sick_hours_log_url(@sick_hours_log), params: { sick_hours_log: { sick_hours_entry: @sick_hours_log.sick_hours_entry, user_id: @sick_hours_log.user_id } }
    assert_redirected_to sick_hours_log_url(@sick_hours_log)
  end

  test "should destroy sick_hours_log" do
    assert_difference('SickHoursLog.count', -1) do
      delete sick_hours_log_url(@sick_hours_log)
    end

    assert_redirected_to sick_hours_logs_url
  end
end
