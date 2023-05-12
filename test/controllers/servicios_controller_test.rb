require "test_helper"

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_servicio_url
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post servicios_url, params: { servicio: { apoyo_cas: @servicio.apoyo_cas, aspirado: @servicio.aspirado, barr12: @servicio.barr12, barrido_industrial: @servicio.barrido_industrial, bbc20: @servicio.bbc20, ca: @servicio.ca, cas: @servicio.cas, cementos: @servicio.cementos, cloracion: @servicio.cloracion, comentarios: @servicio.comentarios, conchuela_a_bru: @servicio.conchuela_a_bru, descarga: @servicio.descarga, escombros: @servicio.escombros, ex01: @servicio.ex01, h12: @servicio.h12, harneo_o_seleccion: @servicio.harneo_o_seleccion, kka_a_ngp: @servicio.kka_a_ngp, kka_a_p1: @servicio.kka_a_p1, kkbc_a_p2: @servicio.kkbc_a_p2, lavado_cont: @servicio.lavado_cont, materia_prima: @servicio.materia_prima, molino: @servicio.molino, nfu: @servicio.nfu, ok04: @servicio.ok04, ok05: @servicio.ok05, ol01: @servicio.ol01, ol02: @servicio.ol02, ol09: @servicio.ol09, ol10: @servicio.ol10, recarga: @servicio.recarga, residuos: @servicio.residuos, retiro_derrames: @servicio.retiro_derrames, retiro_escombros: @servicio.retiro_escombros, ton: @servicio.ton, transportador: @servicio.transportador, yeso_a_silo: @servicio.yeso_a_silo } }
    end

    assert_redirected_to servicio_url(Servicio.last)
  end

  test "should show servicio" do
    get servicio_url(@servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_servicio_url(@servicio)
    assert_response :success
  end

  test "should update servicio" do
    patch servicio_url(@servicio), params: { servicio: { apoyo_cas: @servicio.apoyo_cas, aspirado: @servicio.aspirado, barr12: @servicio.barr12, barrido_industrial: @servicio.barrido_industrial, bbc20: @servicio.bbc20, ca: @servicio.ca, cas: @servicio.cas, cementos: @servicio.cementos, cloracion: @servicio.cloracion, comentarios: @servicio.comentarios, conchuela_a_bru: @servicio.conchuela_a_bru, descarga: @servicio.descarga, escombros: @servicio.escombros, ex01: @servicio.ex01, h12: @servicio.h12, harneo_o_seleccion: @servicio.harneo_o_seleccion, kka_a_ngp: @servicio.kka_a_ngp, kka_a_p1: @servicio.kka_a_p1, kkbc_a_p2: @servicio.kkbc_a_p2, lavado_cont: @servicio.lavado_cont, materia_prima: @servicio.materia_prima, molino: @servicio.molino, nfu: @servicio.nfu, ok04: @servicio.ok04, ok05: @servicio.ok05, ol01: @servicio.ol01, ol02: @servicio.ol02, ol09: @servicio.ol09, ol10: @servicio.ol10, recarga: @servicio.recarga, residuos: @servicio.residuos, retiro_derrames: @servicio.retiro_derrames, retiro_escombros: @servicio.retiro_escombros, ton: @servicio.ton, transportador: @servicio.transportador, yeso_a_silo: @servicio.yeso_a_silo } }
    assert_redirected_to servicio_url(@servicio)
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete servicio_url(@servicio)
    end

    assert_redirected_to servicios_url
  end
end
