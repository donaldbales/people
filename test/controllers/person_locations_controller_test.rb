require 'test_helper'

class PersonLocationsControllerTest < ActionController::TestCase
  setup do
    @person_location = person_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_location" do
    assert_difference('PersonLocation.count') do
      post :create, person_location: { active_datetime: @person_location.active_datetime, inactive_datetime: @person_location.inactive_datetime, location_id: @person_location.location_id, person_id: @person_location.person_id }
    end

    assert_redirected_to person_location_path(assigns(:person_location))
  end

  test "should show person_location" do
    get :show, id: @person_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_location
    assert_response :success
  end

  test "should update person_location" do
    patch :update, id: @person_location, person_location: { active_datetime: @person_location.active_datetime, inactive_datetime: @person_location.inactive_datetime, location_id: @person_location.location_id, person_id: @person_location.person_id }
    assert_redirected_to person_location_path(assigns(:person_location))
  end

  test "should destroy person_location" do
    assert_difference('PersonLocation.count', -1) do
      delete :destroy, id: @person_location
    end

    assert_redirected_to person_locations_path
  end
end
