require 'test_helper'

class PersonOrganizationsControllerTest < ActionController::TestCase
  setup do
    @person_organization = person_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_organization" do
    assert_difference('PersonOrganization.count') do
      post :create, person_organization: { active_datetime: @person_organization.active_datetime, inactive_datetime: @person_organization.inactive_datetime, organization_id: @person_organization.organization_id, person_id: @person_organization.person_id }
    end

    assert_redirected_to person_organization_path(assigns(:person_organization))
  end

  test "should show person_organization" do
    get :show, id: @person_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_organization
    assert_response :success
  end

  test "should update person_organization" do
    patch :update, id: @person_organization, person_organization: { active_datetime: @person_organization.active_datetime, inactive_datetime: @person_organization.inactive_datetime, organization_id: @person_organization.organization_id, person_id: @person_organization.person_id }
    assert_redirected_to person_organization_path(assigns(:person_organization))
  end

  test "should destroy person_organization" do
    assert_difference('PersonOrganization.count', -1) do
      delete :destroy, id: @person_organization
    end

    assert_redirected_to person_organizations_path
  end
end
