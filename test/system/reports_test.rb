require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Bb especial", with: @report.bb_especial
    fill_in "Bb extra", with: @report.bb_extra
    fill_in "Bobinas", with: @report.bobinas
    fill_in "Envases bb", with: @report.envases_bb
    fill_in "Envases esp", with: @report.envases_esp
    fill_in "Envases ext", with: @report.envases_ext
    fill_in "Especial sacos", with: @report.especial_sacos
    fill_in "Especial soluble", with: @report.especial_soluble
    fill_in "Extra sacos", with: @report.extra_sacos
    fill_in "Extra soluble", with: @report.extra_soluble
    fill_in "Humedad promedio", with: @report.humedad_promedio
    fill_in "Muestra pallets", with: @report.muestra_pallets
    fill_in "Observaciones", with: @report.observaciones
    fill_in "Pallets buenos", with: @report.pallets_buenos
    fill_in "Prod esp bb", with: @report.prod_esp_bb
    fill_in "Prod esp sacos", with: @report.prod_esp_sacos
    fill_in "Prod extra bb", with: @report.prod_extra_bb
    fill_in "Prod extra sacos", with: @report.prod_extra_sacos
    fill_in "Prod extra soluble", with: @report.prod_extra_soluble
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Bb especial", with: @report.bb_especial
    fill_in "Bb extra", with: @report.bb_extra
    fill_in "Bobinas", with: @report.bobinas
    fill_in "Envases bb", with: @report.envases_bb
    fill_in "Envases esp", with: @report.envases_esp
    fill_in "Envases ext", with: @report.envases_ext
    fill_in "Especial sacos", with: @report.especial_sacos
    fill_in "Especial soluble", with: @report.especial_soluble
    fill_in "Extra sacos", with: @report.extra_sacos
    fill_in "Extra soluble", with: @report.extra_soluble
    fill_in "Humedad promedio", with: @report.humedad_promedio
    fill_in "Muestra pallets", with: @report.muestra_pallets
    fill_in "Observaciones", with: @report.observaciones
    fill_in "Pallets buenos", with: @report.pallets_buenos
    fill_in "Prod esp bb", with: @report.prod_esp_bb
    fill_in "Prod esp sacos", with: @report.prod_esp_sacos
    fill_in "Prod extra bb", with: @report.prod_extra_bb
    fill_in "Prod extra sacos", with: @report.prod_extra_sacos
    fill_in "Prod extra soluble", with: @report.prod_extra_soluble
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
