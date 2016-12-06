require 'test_helper'

class BankslipsControllerTest < ActionController::TestCase
  setup do
    @bankslip = bankslips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankslips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bankslip" do
    assert_difference('Bankslip.count') do
      post :create, bankslip: { amount: @bankslip.amount, aname: @bankslip.aname, bank_id: @bankslip.bank_id, cnic: @bankslip.cnic, ddate: @bankslip.ddate, department_id: @bankslip.department_id, exad_name: @bankslip.exad_name, fname: @bankslip.fname, purpose_id: @bankslip.purpose_id }
    end

    assert_redirected_to bankslip_path(assigns(:bankslip))
  end

  test "should show bankslip" do
    get :show, id: @bankslip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bankslip
    assert_response :success
  end

  test "should update bankslip" do
    patch :update, id: @bankslip, bankslip: { amount: @bankslip.amount, aname: @bankslip.aname, bank_id: @bankslip.bank_id, cnic: @bankslip.cnic, ddate: @bankslip.ddate, department_id: @bankslip.department_id, exad_name: @bankslip.exad_name, fname: @bankslip.fname, purpose_id: @bankslip.purpose_id }
    assert_redirected_to bankslip_path(assigns(:bankslip))
  end

  test "should destroy bankslip" do
    assert_difference('Bankslip.count', -1) do
      delete :destroy, id: @bankslip
    end

    assert_redirected_to bankslips_path
  end
end
