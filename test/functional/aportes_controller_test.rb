require 'test_helper'

class AportesControllerTest < ActionController::TestCase
  setup do
    @aporte = aportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aporte" do
    assert_difference('Aporte.count') do
      post :create, aporte: { monto: @aporte.monto, montosolidaridad: @aporte.montosolidaridad, nrocomprobante: @aporte.nrocomprobante, tipomovimiento: @aporte.tipomovimiento }
    end

    assert_redirected_to aporte_path(assigns(:aporte))
  end

  test "should show aporte" do
    get :show, id: @aporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aporte
    assert_response :success
  end

  test "should update aporte" do
    put :update, id: @aporte, aporte: { monto: @aporte.monto, montosolidaridad: @aporte.montosolidaridad, nrocomprobante: @aporte.nrocomprobante, tipomovimiento: @aporte.tipomovimiento }
    assert_redirected_to aporte_path(assigns(:aporte))
  end

  test "should destroy aporte" do
    assert_difference('Aporte.count', -1) do
      delete :destroy, id: @aporte
    end

    assert_redirected_to aportes_path
  end
end
