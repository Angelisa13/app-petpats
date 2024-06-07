require "test_helper"

class ProyectoControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get proyecto_inicio_url
    assert_response :success
  end
end
