require 'test_helper'

class HoursLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hours_log = hours_logs(:one)
  end

  test "should get index" do
    get hours_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_hours_log_url
    assert_response :success
  end

  test "should create hours_log" do
    assert_difference('HoursLog.count') do
      post hours_logs_url, params: { hours_log: { date: @hours_log.date, hours_worked: @hours_log.hours_worked, user_id: @hours_log.user_id } }
    end

    assert_redirected_to hours_log_url(HoursLog.last)
  end

  test "should show hours_log" do
    get hours_log_url(@hours_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_hours_log_url(@hours_log)
    assert_response :success
  end

  test "should update hours_log" do
    patch hours_log_url(@hours_log), params: { hours_log: { date: @hours_log.date, hours_worked: @hours_log.hours_worked, user_id: @hours_log.user_id } }
    assert_redirected_to hours_log_url(@hours_log)
  end

  test "should destroy hours_log" do
    assert_difference('HoursLog.count', -1) do
      delete hours_log_url(@hours_log)
    end

    assert_redirected_to hours_logs_url
  end
end
