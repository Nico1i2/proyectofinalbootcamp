require 'test_helper'

class PlanMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_medium = plan_media(:one)
  end

  test "should get index" do
    get plan_media_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_medium_url
    assert_response :success
  end

  test "should create plan_medium" do
    assert_difference('PlanMedium.count') do
      post plan_media_url, params: { plan_medium: { description: @plan_medium.description } }
    end

    assert_redirected_to plan_medium_url(PlanMedium.last)
  end

  test "should show plan_medium" do
    get plan_medium_url(@plan_medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_medium_url(@plan_medium)
    assert_response :success
  end

  test "should update plan_medium" do
    patch plan_medium_url(@plan_medium), params: { plan_medium: { description: @plan_medium.description } }
    assert_redirected_to plan_medium_url(@plan_medium)
  end

  test "should destroy plan_medium" do
    assert_difference('PlanMedium.count', -1) do
      delete plan_medium_url(@plan_medium)
    end

    assert_redirected_to plan_media_url
  end
end
