require 'test_helper'

class IndustrialHygieneJobsControllerTest < ActionController::TestCase
  setup do
    @industrial_hygiene_job = industrial_hygiene_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:industrial_hygiene_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create industrial_hygiene_job" do
    assert_difference('IndustrialHygieneJob.count') do
      post :create, industrial_hygiene_job: { active_datetime: @industrial_hygiene_job.active_datetime, code: @industrial_hygiene_job.code, context_code: @industrial_hygiene_job.context_code, context_description: @industrial_hygiene_job.context_description, context_id: @industrial_hygiene_job.context_id, description: @industrial_hygiene_job.description, inactive_datetime: @industrial_hygiene_job.inactive_datetime, industrial_hygiene_job_type_id: @industrial_hygiene_job.industrial_hygiene_job_type_id, level: @industrial_hygiene_job.level, parent_id: @industrial_hygiene_job.parent_id }
    end

    assert_redirected_to industrial_hygiene_job_path(assigns(:industrial_hygiene_job))
  end

  test "should show industrial_hygiene_job" do
    get :show, id: @industrial_hygiene_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @industrial_hygiene_job
    assert_response :success
  end

  test "should update industrial_hygiene_job" do
    patch :update, id: @industrial_hygiene_job, industrial_hygiene_job: { active_datetime: @industrial_hygiene_job.active_datetime, code: @industrial_hygiene_job.code, context_code: @industrial_hygiene_job.context_code, context_description: @industrial_hygiene_job.context_description, context_id: @industrial_hygiene_job.context_id, description: @industrial_hygiene_job.description, inactive_datetime: @industrial_hygiene_job.inactive_datetime, industrial_hygiene_job_type_id: @industrial_hygiene_job.industrial_hygiene_job_type_id, level: @industrial_hygiene_job.level, parent_id: @industrial_hygiene_job.parent_id }
    assert_redirected_to industrial_hygiene_job_path(assigns(:industrial_hygiene_job))
  end

  test "should destroy industrial_hygiene_job" do
    assert_difference('IndustrialHygieneJob.count', -1) do
      delete :destroy, id: @industrial_hygiene_job
    end

    assert_redirected_to industrial_hygiene_jobs_path
  end
end
