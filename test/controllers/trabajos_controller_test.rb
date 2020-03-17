require 'test_helper'

class TrabajosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajo = trabajos(:one)
  end

  test "should get index" do
    get trabajos_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajo_url
    assert_response :success
  end

  test "should create trabajo" do
    assert_difference('Trabajo.count') do
      post trabajos_url, params: { trabajo: { avance: @trabajo.avance, centro_costo: @trabajo.centro_costo, descripcion: @trabajo.descripcion, factura: @trabajo.factura, fecha_termino: @trabajo.fecha_termino, i10: @trabajo.i10, i11: @trabajo.i11, i12: @trabajo.i12, i1: @trabajo.i1, i2: @trabajo.i2, i3: @trabajo.i3, i4: @trabajo.i4, i5: @trabajo.i5, i6: @trabajo.i6, i7: @trabajo.i7, i8: @trabajo.i8, i9: @trabajo.i9, ito: @trabajo.ito, observaciones: @trabajo.observaciones, op: @trabajo.op, otros: @trabajo.otros, planta: @trabajo.planta, supervisor: @trabajo.supervisor, total: @trabajo.total, v10: @trabajo.v10, v11: @trabajo.v11, v12: @trabajo.v12, v1: @trabajo.v1, v2: @trabajo.v2, v3: @trabajo.v3, v4: @trabajo.v4, v5: @trabajo.v5, v6: @trabajo.v6, v7: @trabajo.v7, v8: @trabajo.v8, v9: @trabajo.v9 } }
    end

    assert_redirected_to trabajo_url(Trabajo.last)
  end

  test "should show trabajo" do
    get trabajo_url(@trabajo)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajo_url(@trabajo)
    assert_response :success
  end

  test "should update trabajo" do
    patch trabajo_url(@trabajo), params: { trabajo: { avance: @trabajo.avance, centro_costo: @trabajo.centro_costo, descripcion: @trabajo.descripcion, factura: @trabajo.factura, fecha_termino: @trabajo.fecha_termino, i10: @trabajo.i10, i11: @trabajo.i11, i12: @trabajo.i12, i1: @trabajo.i1, i2: @trabajo.i2, i3: @trabajo.i3, i4: @trabajo.i4, i5: @trabajo.i5, i6: @trabajo.i6, i7: @trabajo.i7, i8: @trabajo.i8, i9: @trabajo.i9, ito: @trabajo.ito, observaciones: @trabajo.observaciones, op: @trabajo.op, otros: @trabajo.otros, planta: @trabajo.planta, supervisor: @trabajo.supervisor, total: @trabajo.total, v10: @trabajo.v10, v11: @trabajo.v11, v12: @trabajo.v12, v1: @trabajo.v1, v2: @trabajo.v2, v3: @trabajo.v3, v4: @trabajo.v4, v5: @trabajo.v5, v6: @trabajo.v6, v7: @trabajo.v7, v8: @trabajo.v8, v9: @trabajo.v9 } }
    assert_redirected_to trabajo_url(@trabajo)
  end

  test "should destroy trabajo" do
    assert_difference('Trabajo.count', -1) do
      delete trabajo_url(@trabajo)
    end

    assert_redirected_to trabajos_url
  end
end
