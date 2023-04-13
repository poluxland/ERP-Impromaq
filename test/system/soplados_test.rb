require "application_system_test_case"

class SopladosTest < ApplicationSystemTestCase
  setup do
    @soplado = soplados(:one)
  end

  test "visiting the index" do
    visit soplados_url
    assert_selector "h1", text: "Soplados"
  end

  test "creating a Soplado" do
    visit soplados_url
    click_on "New Soplado"

    fill_in "Fecha", with: @soplado.fecha
    fill_in "Observaciones", with: @soplado.observaciones
    fill_in "Presion1", with: @soplado.presion1
    fill_in "Presion2", with: @soplado.presion2
    fill_in "Presion3", with: @soplado.presion3
    fill_in "Supervisor", with: @soplado.supervisor
    click_on "Create Soplado"

    assert_text "Soplado was successfully created"
    click_on "Back"
  end

  test "updating a Soplado" do
    visit soplados_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @soplado.fecha
    fill_in "Observaciones", with: @soplado.observaciones
    fill_in "Presion1", with: @soplado.presion1
    fill_in "Presion2", with: @soplado.presion2
    fill_in "Presion3", with: @soplado.presion3
    fill_in "Supervisor", with: @soplado.supervisor
    click_on "Update Soplado"

    assert_text "Soplado was successfully updated"
    click_on "Back"
  end

  test "destroying a Soplado" do
    visit soplados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soplado was successfully destroyed"
  end
end
