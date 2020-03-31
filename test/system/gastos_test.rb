require "application_system_test_case"

class GastosTest < ApplicationSystemTestCase
  setup do
    @gasto = gastos(:one)
  end

  test "visiting the index" do
    visit gastos_url
    assert_selector "h1", text: "Gastos"
  end

  test "creating a Gasto" do
    visit gastos_url
    click_on "New Gasto"

    fill_in "Aprobado", with: @gasto.aprobado
    fill_in "Cc", with: @gasto.cc
    fill_in "Cot", with: @gasto.cot
    fill_in "Descripcion", with: @gasto.descripcion
    fill_in "Estado", with: @gasto.estado
    fill_in "Familia", with: @gasto.familia
    fill_in "Fecha", with: @gasto.fecha
    fill_in "Iva", with: @gasto.iva
    fill_in "Neto", with: @gasto.neto
    fill_in "Num", with: @gasto.num
    fill_in "Rend", with: @gasto.rend
    fill_in "Resp", with: @gasto.resp
    fill_in "Tipo", with: @gasto.tipo
    fill_in "Valor", with: @gasto.valor
    click_on "Create Gasto"

    assert_text "Gasto was successfully created"
    click_on "Back"
  end

  test "updating a Gasto" do
    visit gastos_url
    click_on "Edit", match: :first

    fill_in "Aprobado", with: @gasto.aprobado
    fill_in "Cc", with: @gasto.cc
    fill_in "Cot", with: @gasto.cot
    fill_in "Descripcion", with: @gasto.descripcion
    fill_in "Estado", with: @gasto.estado
    fill_in "Familia", with: @gasto.familia
    fill_in "Fecha", with: @gasto.fecha
    fill_in "Iva", with: @gasto.iva
    fill_in "Neto", with: @gasto.neto
    fill_in "Num", with: @gasto.num
    fill_in "Rend", with: @gasto.rend
    fill_in "Resp", with: @gasto.resp
    fill_in "Tipo", with: @gasto.tipo
    fill_in "Valor", with: @gasto.valor
    click_on "Update Gasto"

    assert_text "Gasto was successfully updated"
    click_on "Back"
  end

  test "destroying a Gasto" do
    visit gastos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gasto was successfully destroyed"
  end
end
