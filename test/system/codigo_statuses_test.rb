require "application_system_test_case"

class CodigoStatusesTest < ApplicationSystemTestCase
  setup do
    @codigo_status = codigo_statuses(:one)
  end

  test "visiting the index" do
    visit codigo_statuses_url
    assert_selector "h1", text: "Codigo Statuses"
  end

  test "creating a Codigo status" do
    visit codigo_statuses_url
    click_on "New Codigo Status"

    fill_in "Codigo", with: @codigo_status.codigo_id
    fill_in "Estado", with: @codigo_status.estado
    fill_in "Estructura", with: @codigo_status.estructura
    fill_in "Fecha", with: @codigo_status.fecha
    fill_in "Fuga", with: @codigo_status.fuga
    fill_in "Housekeep", with: @codigo_status.housekeep
    fill_in "Ruidio", with: @codigo_status.ruidio
    fill_in "Temp", with: @codigo_status.temp
    fill_in "Vibracion", with: @codigo_status.vibracion
    click_on "Create Codigo status"

    assert_text "Codigo status was successfully created"
    click_on "Back"
  end

  test "updating a Codigo status" do
    visit codigo_statuses_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @codigo_status.codigo_id
    fill_in "Estado", with: @codigo_status.estado
    fill_in "Estructura", with: @codigo_status.estructura
    fill_in "Fecha", with: @codigo_status.fecha
    fill_in "Fuga", with: @codigo_status.fuga
    fill_in "Housekeep", with: @codigo_status.housekeep
    fill_in "Ruidio", with: @codigo_status.ruidio
    fill_in "Temp", with: @codigo_status.temp
    fill_in "Vibracion", with: @codigo_status.vibracion
    click_on "Update Codigo status"

    assert_text "Codigo status was successfully updated"
    click_on "Back"
  end

  test "destroying a Codigo status" do
    visit codigo_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Codigo status was successfully destroyed"
  end
end
