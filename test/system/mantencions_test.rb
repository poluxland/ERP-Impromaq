require "application_system_test_case"

class MantencionsTest < ApplicationSystemTestCase
  setup do
    @mantencion = mantencions(:one)
  end

  test "visiting the index" do
    visit mantencions_url
    assert_selector "h1", text: "Mantencions"
  end

  test "creating a Mantencion" do
    visit mantencions_url
    click_on "New Mantencion"

    fill_in "Descripcion", with: @mantencion.descripcion
    fill_in "Desde", with: @mantencion.desde
    fill_in "Equipo", with: @mantencion.equipo
    fill_in "Hasta", with: @mantencion.hasta
    fill_in "Mecanico", with: @mantencion.mecanico
    fill_in "Repuestos", with: @mantencion.repuestos
    fill_in "Truck", with: @mantencion.truck_id
    click_on "Create Mantencion"

    assert_text "Mantencion was successfully created"
    click_on "Back"
  end

  test "updating a Mantencion" do
    visit mantencions_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @mantencion.descripcion
    fill_in "Desde", with: @mantencion.desde
    fill_in "Equipo", with: @mantencion.equipo
    fill_in "Hasta", with: @mantencion.hasta
    fill_in "Mecanico", with: @mantencion.mecanico
    fill_in "Repuestos", with: @mantencion.repuestos
    fill_in "Truck", with: @mantencion.truck_id
    click_on "Update Mantencion"

    assert_text "Mantencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Mantencion" do
    visit mantencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mantencion was successfully destroyed"
  end
end
