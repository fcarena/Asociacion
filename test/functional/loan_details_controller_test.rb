require 'test_helper'

class LoanDetailsControllerTest < ActionController::TestCase
  setup do
    @loan_detail = loan_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_detail" do
    assert_difference('LoanDetail.count') do
      post :create, loan_detail: { estado: @loan_detail.estado, fechapago: @loan_detail.fechapago, fechavcuota: @loan_detail.fechavcuota, montocuota: @loan_detail.montocuota }
    end

    assert_redirected_to loan_detail_path(assigns(:loan_detail))
  end

  test "should show loan_detail" do
    get :show, id: @loan_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_detail
    assert_response :success
  end

  test "should update loan_detail" do
    put :update, id: @loan_detail, loan_detail: { estado: @loan_detail.estado, fechapago: @loan_detail.fechapago, fechavcuota: @loan_detail.fechavcuota, montocuota: @loan_detail.montocuota }
    assert_redirected_to loan_detail_path(assigns(:loan_detail))
  end

  test "should destroy loan_detail" do
    assert_difference('LoanDetail.count', -1) do
      delete :destroy, id: @loan_detail
    end

    assert_redirected_to loan_details_path
  end
end
