require 'test_helper'

class BarcosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barco = barcos(:one)
  end

  test "should get index" do
    get barcos_url
    assert_response :success
  end

  test "should get new" do
    get new_barco_url
    assert_response :success
  end

  test "should create barco" do
    assert_difference('Barco.count') do
      post barcos_url, params: { barco: { al1: @barco.al1, al2: @barco.al2, alumbrado: @barco.alumbrado, barandas: @barco.barandas, c18: @barco.c18, c19: @barco.c19, cabezald: @barco.cabezald, cabezalm: @barco.cabezalm, caseta: @barco.caseta, ccmmuelle: @barco.ccmmuelle, colectores: @barco.colectores, compresorm: @barco.compresorm, empresa: @barco.empresa, greating: @barco.greating, motoresbc03: @barco.motoresbc03, nave: @barco.nave, nombre: @barco.nombre, numero: @barco.numero, observaciones: @barco.observaciones, polines: @barco.polines, redaire: @barco.redaire, techotolva: @barco.techotolva, varios: @barco.varios, vtolva1: @barco.vtolva1, vtolva2: @barco.vtolva2 } }
    end

    assert_redirected_to barco_url(Barco.last)
  end

  test "should show barco" do
    get barco_url(@barco)
    assert_response :success
  end

  test "should get edit" do
    get edit_barco_url(@barco)
    assert_response :success
  end

  test "should update barco" do
    patch barco_url(@barco), params: { barco: { al1: @barco.al1, al2: @barco.al2, alumbrado: @barco.alumbrado, barandas: @barco.barandas, c18: @barco.c18, c19: @barco.c19, cabezald: @barco.cabezald, cabezalm: @barco.cabezalm, caseta: @barco.caseta, ccmmuelle: @barco.ccmmuelle, colectores: @barco.colectores, compresorm: @barco.compresorm, empresa: @barco.empresa, greating: @barco.greating, motoresbc03: @barco.motoresbc03, nave: @barco.nave, nombre: @barco.nombre, numero: @barco.numero, observaciones: @barco.observaciones, polines: @barco.polines, redaire: @barco.redaire, techotolva: @barco.techotolva, varios: @barco.varios, vtolva1: @barco.vtolva1, vtolva2: @barco.vtolva2 } }
    assert_redirected_to barco_url(@barco)
  end

  test "should destroy barco" do
    assert_difference('Barco.count', -1) do
      delete barco_url(@barco)
    end

    assert_redirected_to barcos_url
  end
end
