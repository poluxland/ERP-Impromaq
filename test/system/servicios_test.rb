require "application_system_test_case"

class ServiciosTest < ApplicationSystemTestCase
  setup do
    @servicio = servicios(:one)
  end

  test "visiting the index" do
    visit servicios_url
    assert_selector "h1", text: "Servicios"
  end

  test "creating a Servicio" do
    visit servicios_url
    click_on "New Servicio"

    fill_in "Apoyo cas", with: @servicio.apoyo_cas
    fill_in "Aspirado", with: @servicio.aspirado
    fill_in "Barr12", with: @servicio.barr12
    fill_in "Barrido industrial", with: @servicio.barrido_industrial
    fill_in "Bbc20", with: @servicio.bbc20
    fill_in "Ca", with: @servicio.ca
    fill_in "Cas", with: @servicio.cas
    fill_in "Cementos", with: @servicio.cementos
    fill_in "Cloracion", with: @servicio.cloracion
    fill_in "Comentarios", with: @servicio.comentarios
    fill_in "Conchuela a bru", with: @servicio.conchuela_a_bru
    fill_in "Descarga", with: @servicio.descarga
    fill_in "Escombros", with: @servicio.escombros
    fill_in "Ex01", with: @servicio.ex01
    fill_in "H12", with: @servicio.h12
    fill_in "Harneo o seleccion", with: @servicio.harneo_o_seleccion
    fill_in "Kka a ngp", with: @servicio.kka_a_ngp
    fill_in "Kka a p1", with: @servicio.kka_a_p1
    fill_in "Kkbc a p2", with: @servicio.kkbc_a_p2
    fill_in "Lavado cont", with: @servicio.lavado_cont
    fill_in "Materia prima", with: @servicio.materia_prima
    fill_in "Molino", with: @servicio.molino
    fill_in "Nfu", with: @servicio.nfu
    fill_in "Ok04", with: @servicio.ok04
    fill_in "Ok05", with: @servicio.ok05
    fill_in "Ol01", with: @servicio.ol01
    fill_in "Ol02", with: @servicio.ol02
    fill_in "Ol09", with: @servicio.ol09
    fill_in "Ol10", with: @servicio.ol10
    fill_in "Recarga", with: @servicio.recarga
    fill_in "Residuos", with: @servicio.residuos
    fill_in "Retiro derrames", with: @servicio.retiro_derrames
    fill_in "Retiro escombros", with: @servicio.retiro_escombros
    fill_in "Ton", with: @servicio.ton
    fill_in "Transportador", with: @servicio.transportador
    fill_in "Yeso a silo", with: @servicio.yeso_a_silo
    click_on "Create Servicio"

    assert_text "Servicio was successfully created"
    click_on "Back"
  end

  test "updating a Servicio" do
    visit servicios_url
    click_on "Edit", match: :first

    fill_in "Apoyo cas", with: @servicio.apoyo_cas
    fill_in "Aspirado", with: @servicio.aspirado
    fill_in "Barr12", with: @servicio.barr12
    fill_in "Barrido industrial", with: @servicio.barrido_industrial
    fill_in "Bbc20", with: @servicio.bbc20
    fill_in "Ca", with: @servicio.ca
    fill_in "Cas", with: @servicio.cas
    fill_in "Cementos", with: @servicio.cementos
    fill_in "Cloracion", with: @servicio.cloracion
    fill_in "Comentarios", with: @servicio.comentarios
    fill_in "Conchuela a bru", with: @servicio.conchuela_a_bru
    fill_in "Descarga", with: @servicio.descarga
    fill_in "Escombros", with: @servicio.escombros
    fill_in "Ex01", with: @servicio.ex01
    fill_in "H12", with: @servicio.h12
    fill_in "Harneo o seleccion", with: @servicio.harneo_o_seleccion
    fill_in "Kka a ngp", with: @servicio.kka_a_ngp
    fill_in "Kka a p1", with: @servicio.kka_a_p1
    fill_in "Kkbc a p2", with: @servicio.kkbc_a_p2
    fill_in "Lavado cont", with: @servicio.lavado_cont
    fill_in "Materia prima", with: @servicio.materia_prima
    fill_in "Molino", with: @servicio.molino
    fill_in "Nfu", with: @servicio.nfu
    fill_in "Ok04", with: @servicio.ok04
    fill_in "Ok05", with: @servicio.ok05
    fill_in "Ol01", with: @servicio.ol01
    fill_in "Ol02", with: @servicio.ol02
    fill_in "Ol09", with: @servicio.ol09
    fill_in "Ol10", with: @servicio.ol10
    fill_in "Recarga", with: @servicio.recarga
    fill_in "Residuos", with: @servicio.residuos
    fill_in "Retiro derrames", with: @servicio.retiro_derrames
    fill_in "Retiro escombros", with: @servicio.retiro_escombros
    fill_in "Ton", with: @servicio.ton
    fill_in "Transportador", with: @servicio.transportador
    fill_in "Yeso a silo", with: @servicio.yeso_a_silo
    click_on "Update Servicio"

    assert_text "Servicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Servicio" do
    visit servicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servicio was successfully destroyed"
  end
end
