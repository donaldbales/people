require 'test_helper'

class PersonIdentifiersControllerTest < ActionController::TestCase
  setup do
    @person_identifier = person_identifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_identifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_identifier" do
    assert_difference('PersonIdentifier.count') do
      post :create, person_identifier: { active_datetime: @person_identifier.active_datetime, identifier_id: @person_identifier.identifier_id, inactive_datetime: @person_identifier.inactive_datetime, person_id: @person_identifier.person_id }
    end

    assert_redirected_to person_identifier_path(assigns(:person_identifier))
  end

  test "should show person_identifier" do
    get :show, id: @person_identifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_identifier
    assert_response :success
  end

  test "should update person_identifier" do
    patch :update, id: @person_identifier, person_identifier: { active_datetime: @person_identifier.active_datetime, identifier_id: @person_identifier.identifier_id, inactive_datetime: @person_identifier.inactive_datetime, person_id: @person_identifier.person_id }
    assert_redirected_to person_identifier_path(assigns(:person_identifier))
  end

  test "should destroy person_identifier" do
    assert_difference('PersonIdentifier.count', -1) do
      delete :destroy, id: @person_identifier
    end

    assert_redirected_to person_identifiers_path
  end
end
