require "application_system_test_case"

class InterventionsTest < ApplicationSystemTestCase
  setup do
    @intervention = interventions(:one)
  end

  test "visiting the index" do
    visit interventions_url
    assert_selector "h1", text: "Interventions"
  end

  test "creating a Intervention" do
    visit interventions_url
    click_on "New Intervention"

    fill_in "Descripcion", with: @intervention.descripcion
    fill_in "Desde", with: @intervention.desde
    fill_in "Equipo", with: @intervention.equipo
    fill_in "Hasta", with: @intervention.hasta
    fill_in "Mecanico", with: @intervention.mecanico
    fill_in "Repuestos", with: @intervention.repuestos
    click_on "Create Intervention"

    assert_text "Intervention was successfully created"
    click_on "Back"
  end

  test "updating a Intervention" do
    visit interventions_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @intervention.descripcion
    fill_in "Desde", with: @intervention.desde
    fill_in "Equipo", with: @intervention.equipo
    fill_in "Hasta", with: @intervention.hasta
    fill_in "Mecanico", with: @intervention.mecanico
    fill_in "Repuestos", with: @intervention.repuestos
    click_on "Update Intervention"

    assert_text "Intervention was successfully updated"
    click_on "Back"
  end

  test "destroying a Intervention" do
    visit interventions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intervention was successfully destroyed"
  end
end
