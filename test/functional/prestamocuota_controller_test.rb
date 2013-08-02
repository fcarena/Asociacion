require 'test_helper'

class PrestamocuotaControllerTest < ActionController::TestCase
  setup do
    @prestamocuotum = prestamocuota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamocuota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamocuotum" do
    assert_difference('Prestamocuotum.count') do
      post :create, prestamocuotum: { estado: @prestamocuotum.estado, fechapago: @prestamocuotum.fechapago, fechavcuota: @prestamocuotum.fechavcuota, montocuota: @prestamocuotum.montocuota, montointeres: @prestamocuotum.montointeres, prestamo_id: @prestamocuotum.prestamo_id }
    end

    assert_redirected_to prestamocuotum_path(assigns(:prestamocuotum))
  end

  test "should show prestamocuotum" do
    get :show, id: @prestamocuotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamocuotum
    assert_response :success
  end

  test "should update prestamocuotum" do
    put :update, id: @prestamocuotum, prestamocuotum: { estado: @prestamocuotum.estado, fechapago: @prestamocuotum.fechapago, fechavcuota: @prestamocuotum.fechavcuota, montocuota: @prestamocuotum.montocuota, montointeres: @prestamocuotum.montointeres, prestamo_id: @prestamocuotum.prestamo_id }
    assert_redirected_to prestamocuotum_path(assigns(:prestamocuotum))
  end

  test "should destroy prestamocuotum" do
    assert_difference('Prestamocuotum.count', -1) do
      delete :destroy, id: @prestamocuotum
    end

    assert_redirected_to prestamocuota_path
  end
end
