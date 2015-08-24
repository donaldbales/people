require 'test_helper'

class PersonPositionsControllerTest < ActionController::TestCase
  setup do
    @person_position = person_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_position" do
    assert_difference('PersonPosition.count') do
      post :create, person_position: { active_datetime: @person_position.active_datetime, inactive_datetime: @person_position.inactive_datetime, person_id: @person_position.person_id, position_id: @person_position.position_id }
    end

    assert_redirected_to person_position_path(assigns(:person_position))
  end

  test "should show person_position" do
    get :show, id: @person_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_position
    assert_response :success
  end

  test "should update person_position" do
    patch :update, id: @person_position, person_position: { active_datetime: @person_position.active_datetime, inactive_datetime: @person_position.inactive_datetime, person_id: @person_position.person_id, position_id: @person_position.position_id }
    assert_redirected_to person_position_path(assigns(:person_position))
  end

  test "should destroy person_position" do
    assert_difference('PersonPosition.count', -1) do
      delete :destroy, id: @person_position
    end

    assert_redirected_to person_positions_path
  end
end
