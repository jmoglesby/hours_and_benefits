require 'test_helper'

class VacationHoursLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacation_hours_log = vacation_hours_logs(:one)
  end

  test "should get index" do
    get vacation_hours_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_vacation_hours_log_url
    assert_response :success
  end

  test "should create vacation_hours_log" do
    assert_difference('VacationHoursLog.count') do
      post vacation_hours_logs_url, params: { vacation_hours_log: { date: @vacation_hours_log.date, user_id: @vacation_hours_log.user_id, vacation_hours_entry: @vacation_hours_log.vacation_hours_entry } }
    end

    assert_redirected_to vacation_hours_log_url(VacationHoursLog.last)
  end

  test "should show vacation_hours_log" do
    get vacation_hours_log_url(@vacation_hours_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacation_hours_log_url(@vacation_hours_log)
    assert_response :success
  end

  test "should update vacation_hours_log" do
    patch vacation_hours_log_url(@vacation_hours_log), params: { vacation_hours_log: { date: @vacation_hours_log.date, user_id: @vacation_hours_log.user_id, vacation_hours_entry: @vacation_hours_log.vacation_hours_entry } }
    assert_redirected_to vacation_hours_log_url(@vacation_hours_log)
  end

  test "should destroy vacation_hours_log" do
    assert_difference('VacationHoursLog.count', -1) do
      delete vacation_hours_log_url(@vacation_hours_log)
    end

    assert_redirected_to vacation_hours_logs_url
  end
end
