require 'test_helper'

class EquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipo = equipos(:one)
  end

  test "should get index" do
    get equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_equipo_url
    assert_response :success
  end

  test "should create equipo" do
    assert_difference('Equipo.count') do
      post equipos_url, params: { equipo: { c1: @equipo.c1, c10: @equipo.c10, c11: @equipo.c11, c12: @equipo.c12, c13: @equipo.c13, c14: @equipo.c14, c15: @equipo.c15, c16: @equipo.c16, c17: @equipo.c17, c18: @equipo.c18, c19: @equipo.c19, c2: @equipo.c2, c20: @equipo.c20, c21: @equipo.c21, c22: @equipo.c22, c23: @equipo.c23, c24: @equipo.c24, c25: @equipo.c25, c26: @equipo.c26, c27: @equipo.c27, c28: @equipo.c28, c29: @equipo.c29, c3: @equipo.c3, c30: @equipo.c30, c4: @equipo.c4, c5: @equipo.c5, c6: @equipo.c6, c7: @equipo.c7, c8: @equipo.c8, c9: @equipo.c9, comentarios: @equipo.comentarios, horometro: @equipo.horometro, nombre: @equipo.nombre, operador: @equipo.operador } }
    end

    assert_redirected_to equipo_url(Equipo.last)
  end

  test "should show equipo" do
    get equipo_url(@equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipo_url(@equipo)
    assert_response :success
  end

  test "should update equipo" do
    patch equipo_url(@equipo), params: { equipo: { c1: @equipo.c1, c10: @equipo.c10, c11: @equipo.c11, c12: @equipo.c12, c13: @equipo.c13, c14: @equipo.c14, c15: @equipo.c15, c16: @equipo.c16, c17: @equipo.c17, c18: @equipo.c18, c19: @equipo.c19, c2: @equipo.c2, c20: @equipo.c20, c21: @equipo.c21, c22: @equipo.c22, c23: @equipo.c23, c24: @equipo.c24, c25: @equipo.c25, c26: @equipo.c26, c27: @equipo.c27, c28: @equipo.c28, c29: @equipo.c29, c3: @equipo.c3, c30: @equipo.c30, c4: @equipo.c4, c5: @equipo.c5, c6: @equipo.c6, c7: @equipo.c7, c8: @equipo.c8, c9: @equipo.c9, comentarios: @equipo.comentarios, horometro: @equipo.horometro, nombre: @equipo.nombre, operador: @equipo.operador } }
    assert_redirected_to equipo_url(@equipo)
  end

  test "should destroy equipo" do
    assert_difference('Equipo.count', -1) do
      delete equipo_url(@equipo)
    end

    assert_redirected_to equipos_url
  end
end
