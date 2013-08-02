require 'test_helper'

class IntermedioControllerTest < ActionController::TestCase
  test "should get intermedio_prestamos" do
    get :intermedio_prestamos
    assert_response :success
  end

  test "should get intermedio_aportes" do
    get :intermedio_aportes
    assert_response :success
  end

end
