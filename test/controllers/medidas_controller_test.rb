require 'test_helper'

class MedidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medida = medidas(:one)
  end

  test "should get index" do
    get medidas_url
    assert_response :success
  end

  test "should get new" do
    get new_medida_url
    assert_response :success
  end

  test "should create medida" do
    assert_difference('Medida.count') do
      post medidas_url, params: { medida: { bigbagespecial: @medida.bigbagespecial, bigbagextra: @medida.bigbagextra, bigbagextra1: @medida.bigbagextra1, bigbagextra1350: @medida.bigbagextra1350, bigbagsuper: @medida.bigbagsuper, callesilo27: @medida.callesilo27, callesilo28: @medida.callesilo28, callesplanta1: @medida.callesplanta1, especialsacos: @medida.especialsacos, extrsacos: @medida.extrsacos, observaciones: @medida.observaciones, otros: @medida.otros, prodhaver: @medida.prodhaver, prodvento: @medida.prodvento, silo19a: @medida.silo19a, silo19b: @medida.silo19b, silo20a: @medida.silo20a, silo20b: @medida.silo20b, silo21a: @medida.silo21a, silo21b: @medida.silo21b, silo22a: @medida.silo22a, silo22b: @medida.silo22b, silo27: @medida.silo27, silo28: @medida.silo28, silos3000tolva1: @medida.silos3000tolva1, silos3000tolva4: @medida.silos3000tolva4, silos3000tolva5: @medida.silos3000tolva5, silosbigbag1: @medida.silosbigbag1, silosbigbag2: @medida.silosbigbag2, silosvento1: @medida.silosvento1, silovento2: @medida.silovento2, silovento3: @medida.silovento3, tolvacalle5: @medida.tolvacalle5 } }
    end

    assert_redirected_to medida_url(Medida.last)
  end

  test "should show medida" do
    get medida_url(@medida)
    assert_response :success
  end

  test "should get edit" do
    get edit_medida_url(@medida)
    assert_response :success
  end

  test "should update medida" do
    patch medida_url(@medida), params: { medida: { bigbagespecial: @medida.bigbagespecial, bigbagextra: @medida.bigbagextra, bigbagextra1: @medida.bigbagextra1, bigbagextra1350: @medida.bigbagextra1350, bigbagsuper: @medida.bigbagsuper, callesilo27: @medida.callesilo27, callesilo28: @medida.callesilo28, callesplanta1: @medida.callesplanta1, especialsacos: @medida.especialsacos, extrsacos: @medida.extrsacos, observaciones: @medida.observaciones, otros: @medida.otros, prodhaver: @medida.prodhaver, prodvento: @medida.prodvento, silo19a: @medida.silo19a, silo19b: @medida.silo19b, silo20a: @medida.silo20a, silo20b: @medida.silo20b, silo21a: @medida.silo21a, silo21b: @medida.silo21b, silo22a: @medida.silo22a, silo22b: @medida.silo22b, silo27: @medida.silo27, silo28: @medida.silo28, silos3000tolva1: @medida.silos3000tolva1, silos3000tolva4: @medida.silos3000tolva4, silos3000tolva5: @medida.silos3000tolva5, silosbigbag1: @medida.silosbigbag1, silosbigbag2: @medida.silosbigbag2, silosvento1: @medida.silosvento1, silovento2: @medida.silovento2, silovento3: @medida.silovento3, tolvacalle5: @medida.tolvacalle5 } }
    assert_redirected_to medida_url(@medida)
  end

  test "should destroy medida" do
    assert_difference('Medida.count', -1) do
      delete medida_url(@medida)
    end

    assert_redirected_to medidas_url
  end
end
