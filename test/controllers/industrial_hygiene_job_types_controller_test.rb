require 'test_helper'

class IndustrialHygieneJobTypesControllerTest < ActionController::TestCase
  setup do
    @industrial_hygiene_job_type = industrial_hygiene_job_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industrial_hygiene_job_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industrial_hygiene_job_type" do
    assert_difference('IndustrialHygieneJobType.count') do
      post :create, industrial_hygiene_job_type: { active_datetime: @industrial_hygiene_job_type.active_datetime, code: @industrial_hygiene_job_type.code, description: @industrial_hygiene_job_type.description, inactive_datetime: @industrial_hygiene_job_type.inactive_datetime }
    end

    assert_redirected_to industrial_hygiene_job_type_path(assigns(:industrial_hygiene_job_type))
  end

  test "should show industrial_hygiene_job_type" do
    get :show, id: @industrial_hygiene_job_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industrial_hygiene_job_type
    assert_response :success
  end

  test "should update industrial_hygiene_job_type" do
    patch :update, id: @industrial_hygiene_job_type, industrial_hygiene_job_type: { active_datetime: @industrial_hygiene_job_type.active_datetime, code: @industrial_hygiene_job_type.code, description: @industrial_hygiene_job_type.description, inactive_datetime: @industrial_hygiene_job_type.inactive_datetime }
    assert_redirected_to industrial_hygiene_job_type_path(assigns(:industrial_hygiene_job_type))
  end

  test "should destroy industrial_hygiene_job_type" do
    assert_difference('IndustrialHygieneJobType.count', -1) do
      delete :destroy, id: @industrial_hygiene_job_type
    end

    assert_redirected_to industrial_hygiene_job_types_path
  end
end
