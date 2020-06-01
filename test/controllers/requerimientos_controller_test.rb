require 'test_helper'

class RequerimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requerimiento = requerimientos(:one)
  end

  test "should get index" do
    get requerimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_requerimiento_url
    assert_response :success
  end

  test "should create requerimiento" do
    assert_difference('Requerimiento.count') do
      post requerimientos_url, params: { requerimiento: { monto: @requerimiento.monto, nombre: @requerimiento.nombre, observaciones: @requerimiento.observaciones, otros: @requerimiento.otros, planta: @requerimiento.planta, respuesta: @requerimiento.respuesta, solicitud: @requerimiento.solicitud } }
    end

    assert_redirected_to requerimiento_url(Requerimiento.last)
  end

  test "should show requerimiento" do
    get requerimiento_url(@requerimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_requerimiento_url(@requerimiento)
    assert_response :success
  end

  test "should update requerimiento" do
    patch requerimiento_url(@requerimiento), params: { requerimiento: { monto: @requerimiento.monto, nombre: @requerimiento.nombre, observaciones: @requerimiento.observaciones, otros: @requerimiento.otros, planta: @requerimiento.planta, respuesta: @requerimiento.respuesta, solicitud: @requerimiento.solicitud } }
    assert_redirected_to requerimiento_url(@requerimiento)
  end

  test "should destroy requerimiento" do
    assert_difference('Requerimiento.count', -1) do
      delete requerimiento_url(@requerimiento)
    end

    assert_redirected_to requerimientos_url
  end
end
