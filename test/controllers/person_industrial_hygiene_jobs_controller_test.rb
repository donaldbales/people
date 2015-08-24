require 'test_helper'

class PersonIndustrialHygieneJobsControllerTest < ActionController::TestCase
  setup do
    @person_industrial_hygiene_job = person_industrial_hygiene_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_industrial_hygiene_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_industrial_hygiene_job" do
    assert_difference('PersonIndustrialHygieneJob.count') do
      post :create, person_industrial_hygiene_job: { active_datetime: @person_industrial_hygiene_job.active_datetime, inactive_datetime: @person_industrial_hygiene_job.inactive_datetime, industrial_hygiene_job_id: @person_industrial_hygiene_job.industrial_hygiene_job_id, person_id: @person_industrial_hygiene_job.person_id }
    end

    assert_redirected_to person_industrial_hygiene_job_path(assigns(:person_industrial_hygiene_job))
  end

  test "should show person_industrial_hygiene_job" do
    get :show, id: @person_industrial_hygiene_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_industrial_hygiene_job
    assert_response :success
  end

  test "should update person_industrial_hygiene_job" do
    patch :update, id: @person_industrial_hygiene_job, person_industrial_hygiene_job: { active_datetime: @person_industrial_hygiene_job.active_datetime, inactive_datetime: @person_industrial_hygiene_job.inactive_datetime, industrial_hygiene_job_id: @person_industrial_hygiene_job.industrial_hygiene_job_id, person_id: @person_industrial_hygiene_job.person_id }
    assert_redirected_to person_industrial_hygiene_job_path(assigns(:person_industrial_hygiene_job))
  end

  test "should destroy person_industrial_hygiene_job" do
    assert_difference('PersonIndustrialHygieneJob.count', -1) do
      delete :destroy, id: @person_industrial_hygiene_job
    end

    assert_redirected_to person_industrial_hygiene_jobs_path
  end
end
