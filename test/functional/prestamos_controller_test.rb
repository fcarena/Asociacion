require 'test_helper'

class PrestamosControllerTest < ActionController::TestCase
  setup do
    @prestamo = prestamos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo" do
    assert_difference('Prestamo.count') do
      post :create, prestamo: { cantcuotas: @prestamo.cantcuotas, montoprestamo: @prestamo.montoprestamo, nrocomprobante: @prestamo.nrocomprobante, tasainteres: @prestamo.tasainteres }
    end

    assert_redirected_to prestamo_path(assigns(:prestamo))
  end

  test "should show prestamo" do
    get :show, id: @prestamo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo
    assert_response :success
  end

  test "should update prestamo" do
    put :update, id: @prestamo, prestamo: { cantcuotas: @prestamo.cantcuotas, montoprestamo: @prestamo.montoprestamo, nrocomprobante: @prestamo.nrocomprobante, tasainteres: @prestamo.tasainteres }
    assert_redirected_to prestamo_path(assigns(:prestamo))
  end

  test "should destroy prestamo" do
    assert_difference('Prestamo.count', -1) do
      delete :destroy, id: @prestamo
    end

    assert_redirected_to prestamos_path
  end
end
