require "application_system_test_case"

class ChecklistsTest < ApplicationSystemTestCase
  setup do
    @checklist = checklists(:one)
  end

  test "visiting the index" do
    visit checklists_url
    assert_selector "h1", text: "Checklists"
  end

  test "creating a Checklist" do
    visit checklists_url
    click_on "New Checklist"

    fill_in "Acatf", with: @checklist.acatf
    fill_in "Achidraulico", with: @checklist.achidraulico
    fill_in "Acmotor", with: @checklist.acmotor
    fill_in "Acnuto", with: @checklist.acnuto
    fill_in "Actrans", with: @checklist.actrans
    check "C1" if @checklist.c1
    check "C10" if @checklist.c10
    check "C11" if @checklist.c11
    check "C12" if @checklist.c12
    check "C13" if @checklist.c13
    check "C14" if @checklist.c14
    check "C15" if @checklist.c15
    check "C16" if @checklist.c16
    check "C17" if @checklist.c17
    check "C18" if @checklist.c18
    check "C19" if @checklist.c19
    check "C2" if @checklist.c2
    check "C3" if @checklist.c3
    check "C4" if @checklist.c4
    check "C5" if @checklist.c5
    check "C6" if @checklist.c6
    check "C7" if @checklist.c7
    check "C8" if @checklist.c8
    check "C9" if @checklist.c9
    fill_in "Combustible", with: @checklist.combustible
    fill_in "Equipo", with: @checklist.equipo
    fill_in "Horometro", with: @checklist.horometro
    fill_in "Nombre", with: @checklist.nombre
    fill_in "Operativo", with: @checklist.operativo
    click_on "Create Checklist"

    assert_text "Checklist was successfully created"
    click_on "Back"
  end

  test "updating a Checklist" do
    visit checklists_url
    click_on "Edit", match: :first

    fill_in "Acatf", with: @checklist.acatf
    fill_in "Achidraulico", with: @checklist.achidraulico
    fill_in "Acmotor", with: @checklist.acmotor
    fill_in "Acnuto", with: @checklist.acnuto
    fill_in "Actrans", with: @checklist.actrans
    check "C1" if @checklist.c1
    check "C10" if @checklist.c10
    check "C11" if @checklist.c11
    check "C12" if @checklist.c12
    check "C13" if @checklist.c13
    check "C14" if @checklist.c14
    check "C15" if @checklist.c15
    check "C16" if @checklist.c16
    check "C17" if @checklist.c17
    check "C18" if @checklist.c18
    check "C19" if @checklist.c19
    check "C2" if @checklist.c2
    check "C3" if @checklist.c3
    check "C4" if @checklist.c4
    check "C5" if @checklist.c5
    check "C6" if @checklist.c6
    check "C7" if @checklist.c7
    check "C8" if @checklist.c8
    check "C9" if @checklist.c9
    fill_in "Combustible", with: @checklist.combustible
    fill_in "Equipo", with: @checklist.equipo
    fill_in "Horometro", with: @checklist.horometro
    fill_in "Nombre", with: @checklist.nombre
    fill_in "Operativo", with: @checklist.operativo
    click_on "Update Checklist"

    assert_text "Checklist was successfully updated"
    click_on "Back"
  end

  test "destroying a Checklist" do
    visit checklists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Checklist was successfully destroyed"
  end
end
