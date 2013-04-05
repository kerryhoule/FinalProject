require 'test_helper'

class ContractorServicesControllerTest < ActionController::TestCase
  setup do
    @contractor_service = contractor_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contractor_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contractor_service" do
    assert_difference('ContractorService.count') do
      post :create, contractor_service: {  }
    end

    assert_redirected_to contractor_service_path(assigns(:contractor_service))
  end

  test "should show contractor_service" do
    get :show, id: @contractor_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contractor_service
    assert_response :success
  end

  test "should update contractor_service" do
    put :update, id: @contractor_service, contractor_service: {  }
    assert_redirected_to contractor_service_path(assigns(:contractor_service))
  end

  test "should destroy contractor_service" do
    assert_difference('ContractorService.count', -1) do
      delete :destroy, id: @contractor_service
    end

    assert_redirected_to contractor_services_path
  end
end
