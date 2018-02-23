require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get devices_url
    assert_response :success
  end

  test "should get new" do
    get new_device_url
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post devices_url, params: { device: { age_limit: @device.age_limit, borrower: @device.borrower, buy_date: @device.buy_date, loan_date: @device.loan_date, model: @device.model, name: @device.name, return_date: @device.return_date, serial_num: @device.serial_num, state: @device.state } }
    end

    assert_redirected_to device_url(Device.last)
  end

  test "should show device" do
    get device_url(@device)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_url(@device)
    assert_response :success
  end

  test "should update device" do
    patch device_url(@device), params: { device: { age_limit: @device.age_limit, borrower: @device.borrower, buy_date: @device.buy_date, loan_date: @device.loan_date, model: @device.model, name: @device.name, return_date: @device.return_date, serial_num: @device.serial_num, state: @device.state } }
    assert_redirected_to device_url(@device)
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete device_url(@device)
    end

    assert_redirected_to devices_url
  end
end
