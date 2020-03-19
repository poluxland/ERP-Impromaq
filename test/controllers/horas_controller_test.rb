require 'test_helper'

class HorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hora = horas(:one)
  end

  test "should get index" do
    get horas_url
    assert_response :success
  end

  test "should get new" do
    get new_hora_url
    assert_response :success
  end

  test "should create hora" do
    assert_difference('Hora.count') do
      post horas_url, params: { hora: { area: @hora.area, descripcion: @hora.descripcion, estado: @hora.estado, fecha: @hora.fecha, he: @hora.he, inicio: @hora.inicio, lugar: @hora.lugar, mandante: @hora.mandante, ot: @hora.ot, personal: @hora.personal, termino: @hora.termino, traslado: @hora.traslado } }
    end

    assert_redirected_to hora_url(Hora.last)
  end

  test "should show hora" do
    get hora_url(@hora)
    assert_response :success
  end

  test "should get edit" do
    get edit_hora_url(@hora)
    assert_response :success
  end

  test "should update hora" do
    patch hora_url(@hora), params: { hora: { area: @hora.area, descripcion: @hora.descripcion, estado: @hora.estado, fecha: @hora.fecha, he: @hora.he, inicio: @hora.inicio, lugar: @hora.lugar, mandante: @hora.mandante, ot: @hora.ot, personal: @hora.personal, termino: @hora.termino, traslado: @hora.traslado } }
    assert_redirected_to hora_url(@hora)
  end

  test "should destroy hora" do
    assert_difference('Hora.count', -1) do
      delete hora_url(@hora)
    end

    assert_redirected_to horas_url
  end
end
