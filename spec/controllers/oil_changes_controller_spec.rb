require 'test_helper'

class OilChangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oil_change = oil_changes(:one)
  end

  test "should get index" do
    get oil_changes_url
    assert_response :success
  end

  test "should get new" do
    get new_oil_change_url
    assert_response :success
  end

  test "should create oil_change" do
    assert_difference('OilChange.count') do
      post oil_changes_url, params: { oil_change: { date: @oil_change.date, mileage: @oil_change.mileage, notes: @oil_change.notes, oil_used: @oil_change.oil_used, vehicle_id: @oil_change.vehicle_id } }
    end

    assert_redirected_to oil_change_url(OilChange.last)
  end

  test "should show oil_change" do
    get oil_change_url(@oil_change)
    assert_response :success
  end

  test "should get edit" do
    get edit_oil_change_url(@oil_change)
    assert_response :success
  end

  test "should update oil_change" do
    patch oil_change_url(@oil_change), params: { oil_change: { date: @oil_change.date, mileage: @oil_change.mileage, notes: @oil_change.notes, oil_used: @oil_change.oil_used, vehicle_id: @oil_change.vehicle_id } }
    assert_redirected_to oil_change_url(@oil_change)
  end

  test "should destroy oil_change" do
    assert_difference('OilChange.count', -1) do
      delete oil_change_url(@oil_change)
    end

    assert_redirected_to oil_changes_url
  end
end
