require 'test_helper'

class PositionsControllerTest < ActionController::TestCase
  setup do
    @position = positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position" do
    assert_difference('Position.count') do
      post :create, position: { active_datetime: @position.active_datetime, code: @position.code, context_code: @position.context_code, context_description: @position.context_description, context_id: @position.context_id, description: @position.description, inactive_datetime: @position.inactive_datetime, level: @position.level, parent_id: @position.parent_id, position_type_id: @position.position_type_id }
    end

    assert_redirected_to position_path(assigns(:position))
  end

  test "should show position" do
    get :show, id: @position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position
    assert_response :success
  end

  test "should update position" do
    patch :update, id: @position, position: { active_datetime: @position.active_datetime, code: @position.code, context_code: @position.context_code, context_description: @position.context_description, context_id: @position.context_id, description: @position.description, inactive_datetime: @position.inactive_datetime, level: @position.level, parent_id: @position.parent_id, position_type_id: @position.position_type_id }
    assert_redirected_to position_path(assigns(:position))
  end

  test "should destroy position" do
    assert_difference('Position.count', -1) do
      delete :destroy, id: @position
    end

    assert_redirected_to positions_path
  end
end
