require "application_system_test_case"

class MedidasTest < ApplicationSystemTestCase
  setup do
    @medida = medidas(:one)
  end

  test "visiting the index" do
    visit medidas_url
    assert_selector "h1", text: "Medidas"
  end

  test "creating a Medida" do
    visit medidas_url
    click_on "New Medida"

    fill_in "Bigbagespecial", with: @medida.bigbagespecial
    fill_in "Bigbagextra", with: @medida.bigbagextra
    fill_in "Bigbagextra1", with: @medida.bigbagextra1
    fill_in "Bigbagextra1350", with: @medida.bigbagextra1350
    fill_in "Bigbagsuper", with: @medida.bigbagsuper
    fill_in "Callesilo27", with: @medida.callesilo27
    fill_in "Callesilo28", with: @medida.callesilo28
    fill_in "Callesplanta1", with: @medida.callesplanta1
    fill_in "Especialsacos", with: @medida.especialsacos
    fill_in "Extrsacos", with: @medida.extrsacos
    fill_in "Observaciones", with: @medida.observaciones
    fill_in "Otros", with: @medida.otros
    fill_in "Prodhaver", with: @medida.prodhaver
    fill_in "Prodvento", with: @medida.prodvento
    fill_in "Silo19a", with: @medida.silo19a
    fill_in "Silo19b", with: @medida.silo19b
    fill_in "Silo20a", with: @medida.silo20a
    fill_in "Silo20b", with: @medida.silo20b
    fill_in "Silo21a", with: @medida.silo21a
    fill_in "Silo21b", with: @medida.silo21b
    fill_in "Silo22a", with: @medida.silo22a
    fill_in "Silo22b", with: @medida.silo22b
    fill_in "Silo27", with: @medida.silo27
    fill_in "Silo28", with: @medida.silo28
    fill_in "Silos3000tolva1", with: @medida.silos3000tolva1
    fill_in "Silos3000tolva4", with: @medida.silos3000tolva4
    fill_in "Silos3000tolva5", with: @medida.silos3000tolva5
    fill_in "Silosbigbag1", with: @medida.silosbigbag1
    fill_in "Silosbigbag2", with: @medida.silosbigbag2
    fill_in "Silosvento1", with: @medida.silosvento1
    fill_in "Silovento2", with: @medida.silovento2
    fill_in "Silovento3", with: @medida.silovento3
    fill_in "Tolvacalle5", with: @medida.tolvacalle5
    click_on "Create Medida"

    assert_text "Medida was successfully created"
    click_on "Back"
  end

  test "updating a Medida" do
    visit medidas_url
    click_on "Edit", match: :first

    fill_in "Bigbagespecial", with: @medida.bigbagespecial
    fill_in "Bigbagextra", with: @medida.bigbagextra
    fill_in "Bigbagextra1", with: @medida.bigbagextra1
    fill_in "Bigbagextra1350", with: @medida.bigbagextra1350
    fill_in "Bigbagsuper", with: @medida.bigbagsuper
    fill_in "Callesilo27", with: @medida.callesilo27
    fill_in "Callesilo28", with: @medida.callesilo28
    fill_in "Callesplanta1", with: @medida.callesplanta1
    fill_in "Especialsacos", with: @medida.especialsacos
    fill_in "Extrsacos", with: @medida.extrsacos
    fill_in "Observaciones", with: @medida.observaciones
    fill_in "Otros", with: @medida.otros
    fill_in "Prodhaver", with: @medida.prodhaver
    fill_in "Prodvento", with: @medida.prodvento
    fill_in "Silo19a", with: @medida.silo19a
    fill_in "Silo19b", with: @medida.silo19b
    fill_in "Silo20a", with: @medida.silo20a
    fill_in "Silo20b", with: @medida.silo20b
    fill_in "Silo21a", with: @medida.silo21a
    fill_in "Silo21b", with: @medida.silo21b
    fill_in "Silo22a", with: @medida.silo22a
    fill_in "Silo22b", with: @medida.silo22b
    fill_in "Silo27", with: @medida.silo27
    fill_in "Silo28", with: @medida.silo28
    fill_in "Silos3000tolva1", with: @medida.silos3000tolva1
    fill_in "Silos3000tolva4", with: @medida.silos3000tolva4
    fill_in "Silos3000tolva5", with: @medida.silos3000tolva5
    fill_in "Silosbigbag1", with: @medida.silosbigbag1
    fill_in "Silosbigbag2", with: @medida.silosbigbag2
    fill_in "Silosvento1", with: @medida.silosvento1
    fill_in "Silovento2", with: @medida.silovento2
    fill_in "Silovento3", with: @medida.silovento3
    fill_in "Tolvacalle5", with: @medida.tolvacalle5
    click_on "Update Medida"

    assert_text "Medida was successfully updated"
    click_on "Back"
  end

  test "destroying a Medida" do
    visit medidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medida was successfully destroyed"
  end
end
