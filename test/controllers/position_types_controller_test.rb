require 'test_helper'

class PositionTypesControllerTest < ActionController::TestCase
  setup do
    @position_type = position_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_type" do
    assert_difference('PositionType.count') do
      post :create, position_type: { active_datetime: @position_type.active_datetime, code: @position_type.code, description: @position_type.description, inactive_datetime: @position_type.inactive_datetime }
    end

    assert_redirected_to position_type_path(assigns(:position_type))
  end

  test "should show position_type" do
    get :show, id: @position_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position_type
    assert_response :success
  end

  test "should update position_type" do
    patch :update, id: @position_type, position_type: { active_datetime: @position_type.active_datetime, code: @position_type.code, description: @position_type.description, inactive_datetime: @position_type.inactive_datetime }
    assert_redirected_to position_type_path(assigns(:position_type))
  end

  test "should destroy position_type" do
    assert_difference('PositionType.count', -1) do
      delete :destroy, id: @position_type
    end

    assert_redirected_to position_types_path
  end
end
