require "application_system_test_case"

class RequerimientosTest < ApplicationSystemTestCase
  setup do
    @requerimiento = requerimientos(:one)
  end

  test "visiting the index" do
    visit requerimientos_url
    assert_selector "h1", text: "Requerimientos"
  end

  test "creating a Requerimiento" do
    visit requerimientos_url
    click_on "New Requerimiento"

    fill_in "Monto", with: @requerimiento.monto
    fill_in "Nombre", with: @requerimiento.nombre
    fill_in "Observaciones", with: @requerimiento.observaciones
    fill_in "Otros", with: @requerimiento.otros
    fill_in "Planta", with: @requerimiento.planta
    fill_in "Respuesta", with: @requerimiento.respuesta
    fill_in "Solicitud", with: @requerimiento.solicitud
    click_on "Create Requerimiento"

    assert_text "Requerimiento was successfully created"
    click_on "Back"
  end

  test "updating a Requerimiento" do
    visit requerimientos_url
    click_on "Edit", match: :first

    fill_in "Monto", with: @requerimiento.monto
    fill_in "Nombre", with: @requerimiento.nombre
    fill_in "Observaciones", with: @requerimiento.observaciones
    fill_in "Otros", with: @requerimiento.otros
    fill_in "Planta", with: @requerimiento.planta
    fill_in "Respuesta", with: @requerimiento.respuesta
    fill_in "Solicitud", with: @requerimiento.solicitud
    click_on "Update Requerimiento"

    assert_text "Requerimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Requerimiento" do
    visit requerimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requerimiento was successfully destroyed"
  end
end
