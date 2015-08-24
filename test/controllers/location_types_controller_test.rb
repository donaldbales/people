require 'test_helper'

class LocationTypesControllerTest < ActionController::TestCase
  setup do
    @location_type = location_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_type" do
    assert_difference('LocationType.count') do
      post :create, location_type: { active_datetime: @location_type.active_datetime, code: @location_type.code, description: @location_type.description, inactive_datetime: @location_type.inactive_datetime }
    end

    assert_redirected_to location_type_path(assigns(:location_type))
  end

  test "should show location_type" do
    get :show, id: @location_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_type
    assert_response :success
  end

  test "should update location_type" do
    patch :update, id: @location_type, location_type: { active_datetime: @location_type.active_datetime, code: @location_type.code, description: @location_type.description, inactive_datetime: @location_type.inactive_datetime }
    assert_redirected_to location_type_path(assigns(:location_type))
  end

  test "should destroy location_type" do
    assert_difference('LocationType.count', -1) do
      delete :destroy, id: @location_type
    end

    assert_redirected_to location_types_path
  end
end
