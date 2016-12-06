require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { amount: @registration.amount, board_university: @registration.board_university, challan_no: @registration.challan_no, cnic_no: @registration.cnic_no, d_of_b: @registration.d_of_b, fname: @registration.fname, local_domicile: @registration.local_domicile, name_of_year_examination: @registration.name_of_year_examination, permanent_address: @registration.permanent_address, present_address: @registration.present_address, previous_registration_no: @registration.previous_registration_no, registration_date: @registration.registration_date, religion: @registration.religion, sname: @registration.sname }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { amount: @registration.amount, board_university: @registration.board_university, challan_no: @registration.challan_no, cnic_no: @registration.cnic_no, d_of_b: @registration.d_of_b, fname: @registration.fname, local_domicile: @registration.local_domicile, name_of_year_examination: @registration.name_of_year_examination, permanent_address: @registration.permanent_address, present_address: @registration.present_address, previous_registration_no: @registration.previous_registration_no, registration_date: @registration.registration_date, religion: @registration.religion, sname: @registration.sname }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
