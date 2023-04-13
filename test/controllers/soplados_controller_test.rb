require "test_helper"

class SopladosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soplado = soplados(:one)
  end

  test "should get index" do
    get soplados_url
    assert_response :success
  end

  test "should get new" do
    get new_soplado_url
    assert_response :success
  end

  test "should create soplado" do
    assert_difference('Soplado.count') do
      post soplados_url, params: { soplado: { fecha: @soplado.fecha, observaciones: @soplado.observaciones, presion1: @soplado.presion1, presion2: @soplado.presion2, presion3: @soplado.presion3, supervisor: @soplado.supervisor } }
    end

    assert_redirected_to soplado_url(Soplado.last)
  end

  test "should show soplado" do
    get soplado_url(@soplado)
    assert_response :success
  end

  test "should get edit" do
    get edit_soplado_url(@soplado)
    assert_response :success
  end

  test "should update soplado" do
    patch soplado_url(@soplado), params: { soplado: { fecha: @soplado.fecha, observaciones: @soplado.observaciones, presion1: @soplado.presion1, presion2: @soplado.presion2, presion3: @soplado.presion3, supervisor: @soplado.supervisor } }
    assert_redirected_to soplado_url(@soplado)
  end

  test "should destroy soplado" do
    assert_difference('Soplado.count', -1) do
      delete soplado_url(@soplado)
    end

    assert_redirected_to soplados_url
  end
end
