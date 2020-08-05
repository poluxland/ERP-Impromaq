require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "creating a Personal" do
    visit personals_url
    click_on "New Personal"

    fill_in "Comentarios", with: @personal.comentarios
    fill_in "Contratado", with: @personal.contratado
    fill_in "Dv", with: @personal.dv
    fill_in "Evaluacion", with: @personal.evaluacion
    fill_in "Nombre", with: @personal.nombre
    fill_in "Rut", with: @personal.rut
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "updating a Personal" do
    visit personals_url
    click_on "Edit", match: :first

    fill_in "Comentarios", with: @personal.comentarios
    fill_in "Contratado", with: @personal.contratado
    fill_in "Dv", with: @personal.dv
    fill_in "Evaluacion", with: @personal.evaluacion
    fill_in "Nombre", with: @personal.nombre
    fill_in "Rut", with: @personal.rut
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal" do
    visit personals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal was successfully destroyed"
  end
end
