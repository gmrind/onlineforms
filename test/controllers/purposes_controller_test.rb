require 'test_helper'

class PurposesControllerTest < ActionController::TestCase
  setup do
    @purpose = purposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purpose" do
    assert_difference('Purpose.count') do
      post :create, purpose: { department_id: @purpose.department_id, pname: @purpose.pname }
    end

    assert_redirected_to purpose_path(assigns(:purpose))
  end

  test "should show purpose" do
    get :show, id: @purpose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purpose
    assert_response :success
  end

  test "should update purpose" do
    patch :update, id: @purpose, purpose: { department_id: @purpose.department_id, pname: @purpose.pname }
    assert_redirected_to purpose_path(assigns(:purpose))
  end

  test "should destroy purpose" do
    assert_difference('Purpose.count', -1) do
      delete :destroy, id: @purpose
    end

    assert_redirected_to purposes_path
  end
end
