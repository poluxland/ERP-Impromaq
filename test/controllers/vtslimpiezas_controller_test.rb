require 'test_helper'

class VtslimpiezasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vtslimpieza = vtslimpiezas(:one)
  end

  test "should get index" do
    get vtslimpiezas_url
    assert_response :success
  end

  test "should get new" do
    get new_vtslimpieza_url
    assert_response :success
  end

  test "should create vtslimpieza" do
    assert_difference('Vtslimpieza.count') do
      post vtslimpiezas_url, params: { vtslimpieza: { asiento: @vtslimpieza.asiento, baranda: @vtslimpieza.baranda, baño: @vtslimpieza.baño, botoneras: @vtslimpieza.botoneras, camarin: @vtslimpieza.camarin, comedor: @vtslimpieza.comedor, comentarios: @vtslimpieza.comentarios, fecha: @vtslimpieza.fecha, mesa_comedor: @vtslimpieza.mesa_comedor, mesa_computador: @vtslimpieza.mesa_computador, nombre: @vtslimpieza.nombre, pesamatic: @vtslimpieza.pesamatic, turno: @vtslimpieza.turno } }
    end

    assert_redirected_to vtslimpieza_url(Vtslimpieza.last)
  end

  test "should show vtslimpieza" do
    get vtslimpieza_url(@vtslimpieza)
    assert_response :success
  end

  test "should get edit" do
    get edit_vtslimpieza_url(@vtslimpieza)
    assert_response :success
  end

  test "should update vtslimpieza" do
    patch vtslimpieza_url(@vtslimpieza), params: { vtslimpieza: { asiento: @vtslimpieza.asiento, baranda: @vtslimpieza.baranda, baño: @vtslimpieza.baño, botoneras: @vtslimpieza.botoneras, camarin: @vtslimpieza.camarin, comedor: @vtslimpieza.comedor, comentarios: @vtslimpieza.comentarios, fecha: @vtslimpieza.fecha, mesa_comedor: @vtslimpieza.mesa_comedor, mesa_computador: @vtslimpieza.mesa_computador, nombre: @vtslimpieza.nombre, pesamatic: @vtslimpieza.pesamatic, turno: @vtslimpieza.turno } }
    assert_redirected_to vtslimpieza_url(@vtslimpieza)
  end

  test "should destroy vtslimpieza" do
    assert_difference('Vtslimpieza.count', -1) do
      delete vtslimpieza_url(@vtslimpieza)
    end

    assert_redirected_to vtslimpiezas_url
  end
end
