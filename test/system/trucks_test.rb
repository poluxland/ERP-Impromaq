require "application_system_test_case"

class TrucksTest < ApplicationSystemTestCase
  setup do
    @truck = trucks(:one)
  end

  test "visiting the index" do
    visit trucks_url
    assert_selector "h1", text: "Trucks"
  end

  test "creating a Truck" do
    visit trucks_url
    click_on "New Truck"

    fill_in "Año", with: @truck.año
    fill_in "Codigo", with: @truck.codigo
    fill_in "Marca", with: @truck.marca
    fill_in "Modelo", with: @truck.modelo
    fill_in "Otros", with: @truck.otros
    fill_in "Planta", with: @truck.planta
    click_on "Create Truck"

    assert_text "Truck was successfully created"
    click_on "Back"
  end

  test "updating a Truck" do
    visit trucks_url
    click_on "Edit", match: :first

    fill_in "Año", with: @truck.año
    fill_in "Codigo", with: @truck.codigo
    fill_in "Marca", with: @truck.marca
    fill_in "Modelo", with: @truck.modelo
    fill_in "Otros", with: @truck.otros
    fill_in "Planta", with: @truck.planta
    click_on "Update Truck"

    assert_text "Truck was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck" do
    visit trucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck was successfully destroyed"
  end
end
