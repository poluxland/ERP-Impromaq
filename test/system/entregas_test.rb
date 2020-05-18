require "application_system_test_case"

class EntregasTest < ApplicationSystemTestCase
  setup do
    @entrega = entregas(:one)
  end

  test "visiting the index" do
    visit entregas_url
    assert_selector "h1", text: "Entregas"
  end

  test "creating a Entrega" do
    visit entregas_url
    click_on "New Entrega"

    fill_in "Antiguedad", with: @entrega.antiguedad
    fill_in "Fecha", with: @entrega.fecha
    fill_in "Nombre", with: @entrega.nombre
    fill_in "Observaciones", with: @entrega.observaciones
    fill_in "Responsable", with: @entrega.responsable
    fill_in "Tipo", with: @entrega.tipo
    click_on "Create Entrega"

    assert_text "Entrega was successfully created"
    click_on "Back"
  end

  test "updating a Entrega" do
    visit entregas_url
    click_on "Edit", match: :first

    fill_in "Antiguedad", with: @entrega.antiguedad
    fill_in "Fecha", with: @entrega.fecha
    fill_in "Nombre", with: @entrega.nombre
    fill_in "Observaciones", with: @entrega.observaciones
    fill_in "Responsable", with: @entrega.responsable
    fill_in "Tipo", with: @entrega.tipo
    click_on "Update Entrega"

    assert_text "Entrega was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrega" do
    visit entregas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrega was successfully destroyed"
  end
end
