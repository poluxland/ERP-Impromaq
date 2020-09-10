require "application_system_test_case"

class VtslimpiezasTest < ApplicationSystemTestCase
  setup do
    @vtslimpieza = vtslimpiezas(:one)
  end

  test "visiting the index" do
    visit vtslimpiezas_url
    assert_selector "h1", text: "Vtslimpiezas"
  end

  test "creating a Vtslimpieza" do
    visit vtslimpiezas_url
    click_on "New Vtslimpieza"

    fill_in "Asiento", with: @vtslimpieza.asiento
    fill_in "Baranda", with: @vtslimpieza.baranda
    fill_in "Baño", with: @vtslimpieza.baño
    fill_in "Botoneras", with: @vtslimpieza.botoneras
    fill_in "Camarin", with: @vtslimpieza.camarin
    fill_in "Comedor", with: @vtslimpieza.comedor
    fill_in "Comentarios", with: @vtslimpieza.comentarios
    fill_in "Fecha", with: @vtslimpieza.fecha
    fill_in "Mesa comedor", with: @vtslimpieza.mesa_comedor
    fill_in "Mesa computador", with: @vtslimpieza.mesa_computador
    fill_in "Nombre", with: @vtslimpieza.nombre
    fill_in "Pesamatic", with: @vtslimpieza.pesamatic
    fill_in "Turno", with: @vtslimpieza.turno
    click_on "Create Vtslimpieza"

    assert_text "Vtslimpieza was successfully created"
    click_on "Back"
  end

  test "updating a Vtslimpieza" do
    visit vtslimpiezas_url
    click_on "Edit", match: :first

    fill_in "Asiento", with: @vtslimpieza.asiento
    fill_in "Baranda", with: @vtslimpieza.baranda
    fill_in "Baño", with: @vtslimpieza.baño
    fill_in "Botoneras", with: @vtslimpieza.botoneras
    fill_in "Camarin", with: @vtslimpieza.camarin
    fill_in "Comedor", with: @vtslimpieza.comedor
    fill_in "Comentarios", with: @vtslimpieza.comentarios
    fill_in "Fecha", with: @vtslimpieza.fecha
    fill_in "Mesa comedor", with: @vtslimpieza.mesa_comedor
    fill_in "Mesa computador", with: @vtslimpieza.mesa_computador
    fill_in "Nombre", with: @vtslimpieza.nombre
    fill_in "Pesamatic", with: @vtslimpieza.pesamatic
    fill_in "Turno", with: @vtslimpieza.turno
    click_on "Update Vtslimpieza"

    assert_text "Vtslimpieza was successfully updated"
    click_on "Back"
  end

  test "destroying a Vtslimpieza" do
    visit vtslimpiezas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vtslimpieza was successfully destroyed"
  end
end
