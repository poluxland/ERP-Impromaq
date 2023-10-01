require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { bb_especial: @report.bb_especial, bb_extra: @report.bb_extra, bobinas: @report.bobinas, envases_bb: @report.envases_bb, envases_esp: @report.envases_esp, envases_ext: @report.envases_ext, especial_sacos: @report.especial_sacos, especial_soluble: @report.especial_soluble, extra_sacos: @report.extra_sacos, extra_soluble: @report.extra_soluble, humedad_promedio: @report.humedad_promedio, muestra_pallets: @report.muestra_pallets, observaciones: @report.observaciones, pallets_buenos: @report.pallets_buenos, prod_esp_bb: @report.prod_esp_bb, prod_esp_sacos: @report.prod_esp_sacos, prod_extra_bb: @report.prod_extra_bb, prod_extra_sacos: @report.prod_extra_sacos, prod_extra_soluble: @report.prod_extra_soluble } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { bb_especial: @report.bb_especial, bb_extra: @report.bb_extra, bobinas: @report.bobinas, envases_bb: @report.envases_bb, envases_esp: @report.envases_esp, envases_ext: @report.envases_ext, especial_sacos: @report.especial_sacos, especial_soluble: @report.especial_soluble, extra_sacos: @report.extra_sacos, extra_soluble: @report.extra_soluble, humedad_promedio: @report.humedad_promedio, muestra_pallets: @report.muestra_pallets, observaciones: @report.observaciones, pallets_buenos: @report.pallets_buenos, prod_esp_bb: @report.prod_esp_bb, prod_esp_sacos: @report.prod_esp_sacos, prod_extra_bb: @report.prod_extra_bb, prod_extra_sacos: @report.prod_extra_sacos, prod_extra_soluble: @report.prod_extra_soluble } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end
