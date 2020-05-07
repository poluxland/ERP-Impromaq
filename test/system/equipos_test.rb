require "application_system_test_case"

class EquiposTest < ApplicationSystemTestCase
  setup do
    @equipo = equipos(:one)
  end

  test "visiting the index" do
    visit equipos_url
    assert_selector "h1", text: "Equipos"
  end

  test "creating a Equipo" do
    visit equipos_url
    click_on "New Equipo"

    fill_in "C1", with: @equipo.c1
    fill_in "C10", with: @equipo.c10
    fill_in "C11", with: @equipo.c11
    fill_in "C12", with: @equipo.c12
    fill_in "C13", with: @equipo.c13
    fill_in "C14", with: @equipo.c14
    fill_in "C15", with: @equipo.c15
    fill_in "C16", with: @equipo.c16
    fill_in "C17", with: @equipo.c17
    fill_in "C18", with: @equipo.c18
    fill_in "C19", with: @equipo.c19
    fill_in "C2", with: @equipo.c2
    fill_in "C20", with: @equipo.c20
    fill_in "C21", with: @equipo.c21
    fill_in "C22", with: @equipo.c22
    fill_in "C23", with: @equipo.c23
    fill_in "C24", with: @equipo.c24
    fill_in "C25", with: @equipo.c25
    fill_in "C26", with: @equipo.c26
    fill_in "C27", with: @equipo.c27
    fill_in "C28", with: @equipo.c28
    fill_in "C29", with: @equipo.c29
    fill_in "C3", with: @equipo.c3
    fill_in "C30", with: @equipo.c30
    fill_in "C4", with: @equipo.c4
    fill_in "C5", with: @equipo.c5
    fill_in "C6", with: @equipo.c6
    fill_in "C7", with: @equipo.c7
    fill_in "C8", with: @equipo.c8
    fill_in "C9", with: @equipo.c9
    fill_in "Comentarios", with: @equipo.comentarios
    fill_in "Horometro", with: @equipo.horometro
    fill_in "Nombre", with: @equipo.nombre
    fill_in "Operador", with: @equipo.operador
    click_on "Create Equipo"

    assert_text "Equipo was successfully created"
    click_on "Back"
  end

  test "updating a Equipo" do
    visit equipos_url
    click_on "Edit", match: :first

    fill_in "C1", with: @equipo.c1
    fill_in "C10", with: @equipo.c10
    fill_in "C11", with: @equipo.c11
    fill_in "C12", with: @equipo.c12
    fill_in "C13", with: @equipo.c13
    fill_in "C14", with: @equipo.c14
    fill_in "C15", with: @equipo.c15
    fill_in "C16", with: @equipo.c16
    fill_in "C17", with: @equipo.c17
    fill_in "C18", with: @equipo.c18
    fill_in "C19", with: @equipo.c19
    fill_in "C2", with: @equipo.c2
    fill_in "C20", with: @equipo.c20
    fill_in "C21", with: @equipo.c21
    fill_in "C22", with: @equipo.c22
    fill_in "C23", with: @equipo.c23
    fill_in "C24", with: @equipo.c24
    fill_in "C25", with: @equipo.c25
    fill_in "C26", with: @equipo.c26
    fill_in "C27", with: @equipo.c27
    fill_in "C28", with: @equipo.c28
    fill_in "C29", with: @equipo.c29
    fill_in "C3", with: @equipo.c3
    fill_in "C30", with: @equipo.c30
    fill_in "C4", with: @equipo.c4
    fill_in "C5", with: @equipo.c5
    fill_in "C6", with: @equipo.c6
    fill_in "C7", with: @equipo.c7
    fill_in "C8", with: @equipo.c8
    fill_in "C9", with: @equipo.c9
    fill_in "Comentarios", with: @equipo.comentarios
    fill_in "Horometro", with: @equipo.horometro
    fill_in "Nombre", with: @equipo.nombre
    fill_in "Operador", with: @equipo.operador
    click_on "Update Equipo"

    assert_text "Equipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipo" do
    visit equipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipo was successfully destroyed"
  end
end
