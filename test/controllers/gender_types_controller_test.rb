require 'test_helper'

class GenderTypesControllerTest < ActionController::TestCase
  setup do
    @gender_type = gender_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gender_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gender_type" do
    assert_difference('GenderType.count') do
      post :create, gender_type: { active_datetime: @gender_type.active_datetime, code: @gender_type.code, description: @gender_type.description, inactive_datetime: @gender_type.inactive_datetime }
    end

    assert_redirected_to gender_type_path(assigns(:gender_type))
  end

  test "should show gender_type" do
    get :show, id: @gender_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gender_type
    assert_response :success
  end

  test "should update gender_type" do
    patch :update, id: @gender_type, gender_type: { active_datetime: @gender_type.active_datetime, code: @gender_type.code, description: @gender_type.description, inactive_datetime: @gender_type.inactive_datetime }
    assert_redirected_to gender_type_path(assigns(:gender_type))
  end

  test "should destroy gender_type" do
    assert_difference('GenderType.count', -1) do
      delete :destroy, id: @gender_type
    end

    assert_redirected_to gender_types_path
  end
end
