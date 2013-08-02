require 'test_helper'

class PrestamoCuotaControllerTest < ActionController::TestCase
  setup do
    @prestamo_cuotum = prestamo_cuota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamo_cuota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo_cuotum" do
    assert_difference('PrestamoCuotum.count') do
      post :create, prestamo_cuotum: { estado: @prestamo_cuotum.estado, fechapago: @prestamo_cuotum.fechapago, fechavcuota: @prestamo_cuotum.fechavcuota, montocuota: @prestamo_cuotum.montocuota, montointeres: @prestamo_cuotum.montointeres, prestamo_id: @prestamo_cuotum.prestamo_id }
    end

    assert_redirected_to prestamo_cuotum_path(assigns(:prestamo_cuotum))
  end

  test "should show prestamo_cuotum" do
    get :show, id: @prestamo_cuotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo_cuotum
    assert_response :success
  end

  test "should update prestamo_cuotum" do
    put :update, id: @prestamo_cuotum, prestamo_cuotum: { estado: @prestamo_cuotum.estado, fechapago: @prestamo_cuotum.fechapago, fechavcuota: @prestamo_cuotum.fechavcuota, montocuota: @prestamo_cuotum.montocuota, montointeres: @prestamo_cuotum.montointeres, prestamo_id: @prestamo_cuotum.prestamo_id }
    assert_redirected_to prestamo_cuotum_path(assigns(:prestamo_cuotum))
  end

  test "should destroy prestamo_cuotum" do
    assert_difference('PrestamoCuotum.count', -1) do
      delete :destroy, id: @prestamo_cuotum
    end

    assert_redirected_to prestamo_cuota_path
  end
end
