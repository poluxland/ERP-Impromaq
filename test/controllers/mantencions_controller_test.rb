require 'test_helper'

class MantencionsControllerTest < ActionDispatch::IntegrationTest
  fixtures :mantencions, :trucks

  setup do
    @mantencion = mantencions(:one)
  end


  test "should get index" do
    get mantencions_url
    assert_response :success
  end

  test "should get new" do
    get new_mantencion_url
    assert_response :success
  end

  test "should create mantencion" do
    assert_difference('Mantencion.count') do
      post mantencions_url, params: { mantencion: { descripcion: @mantencion.descripcion, desde: @mantencion.desde, equipo: @mantencion.equipo, hasta: @mantencion.hasta, mecanico: @mantencion.mecanico, repuestos: @mantencion.repuestos, truck_id: @mantencion.truck_id } }
    end

    assert_redirected_to mantencion_url(Mantencion.last)
  end

  test "should show mantencion" do
    get mantencion_url(@mantencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_mantencion_url(@mantencion)
    assert_response :success
  end

  test "should update mantencion" do
    patch mantencion_url(@mantencion), params: { mantencion: { descripcion: @mantencion.descripcion, desde: @mantencion.desde, equipo: @mantencion.equipo, hasta: @mantencion.hasta, mecanico: @mantencion.mecanico, repuestos: @mantencion.repuestos, truck_id: @mantencion.truck_id } }
    assert_redirected_to mantencion_url(@mantencion)
  end

  test "should destroy mantencion" do
    assert_difference('Mantencion.count', -1) do
      delete mantencion_url(@mantencion)
    end

    assert_redirected_to mantencions_url
  end
end
