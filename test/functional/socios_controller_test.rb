require 'test_helper'

class SociosControllerTest < ActionController::TestCase
  setup do
    @socio = socios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio" do
    assert_difference('Socio.count') do
      post :create, socio: { apellido: @socio.apellido, ci: @socio.ci, correo: @socio.correo, dependencia: @socio.dependencia, direccion: @socio.direccion, nombre: @socio.nombre, tel: @socio.tel, tipo: @socio.tipo }
    end

    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should show socio" do
    get :show, id: @socio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio
    assert_response :success
  end

  test "should update socio" do
    put :update, id: @socio, socio: { apellido: @socio.apellido, ci: @socio.ci, correo: @socio.correo, dependencia: @socio.dependencia, direccion: @socio.direccion, nombre: @socio.nombre, tel: @socio.tel, tipo: @socio.tipo }
    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should destroy socio" do
    assert_difference('Socio.count', -1) do
      delete :destroy, id: @socio
    end

    assert_redirected_to socios_path
  end
end
