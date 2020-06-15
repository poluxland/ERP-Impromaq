require "application_system_test_case"

class BarcosTest < ApplicationSystemTestCase
  setup do
    @barco = barcos(:one)
  end

  test "visiting the index" do
    visit barcos_url
    assert_selector "h1", text: "Barcos"
  end

  test "creating a Barco" do
    visit barcos_url
    click_on "New Barco"

    check "Al1" if @barco.al1
    check "Al2" if @barco.al2
    check "Alumbrado" if @barco.alumbrado
    check "Barandas" if @barco.barandas
    check "C18" if @barco.c18
    check "C19" if @barco.c19
    check "Cabezald" if @barco.cabezald
    check "Cabezalm" if @barco.cabezalm
    check "Caseta" if @barco.caseta
    check "Ccmmuelle" if @barco.ccmmuelle
    check "Colectores" if @barco.colectores
    check "Compresorm" if @barco.compresorm
    fill_in "Empresa", with: @barco.empresa
    check "Greating" if @barco.greating
    check "Motoresbc03" if @barco.motoresbc03
    fill_in "Nave", with: @barco.nave
    fill_in "Nombre", with: @barco.nombre
    fill_in "Numero", with: @barco.numero
    fill_in "Observaciones", with: @barco.observaciones
    check "Polines" if @barco.polines
    check "Redaire" if @barco.redaire
    check "Techotolva" if @barco.techotolva
    fill_in "Varios", with: @barco.varios
    check "Vtolva1" if @barco.vtolva1
    check "Vtolva2" if @barco.vtolva2
    click_on "Create Barco"

    assert_text "Barco was successfully created"
    click_on "Back"
  end

  test "updating a Barco" do
    visit barcos_url
    click_on "Edit", match: :first

    check "Al1" if @barco.al1
    check "Al2" if @barco.al2
    check "Alumbrado" if @barco.alumbrado
    check "Barandas" if @barco.barandas
    check "C18" if @barco.c18
    check "C19" if @barco.c19
    check "Cabezald" if @barco.cabezald
    check "Cabezalm" if @barco.cabezalm
    check "Caseta" if @barco.caseta
    check "Ccmmuelle" if @barco.ccmmuelle
    check "Colectores" if @barco.colectores
    check "Compresorm" if @barco.compresorm
    fill_in "Empresa", with: @barco.empresa
    check "Greating" if @barco.greating
    check "Motoresbc03" if @barco.motoresbc03
    fill_in "Nave", with: @barco.nave
    fill_in "Nombre", with: @barco.nombre
    fill_in "Numero", with: @barco.numero
    fill_in "Observaciones", with: @barco.observaciones
    check "Polines" if @barco.polines
    check "Redaire" if @barco.redaire
    check "Techotolva" if @barco.techotolva
    fill_in "Varios", with: @barco.varios
    check "Vtolva1" if @barco.vtolva1
    check "Vtolva2" if @barco.vtolva2
    click_on "Update Barco"

    assert_text "Barco was successfully updated"
    click_on "Back"
  end

  test "destroying a Barco" do
    visit barcos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barco was successfully destroyed"
  end
end
