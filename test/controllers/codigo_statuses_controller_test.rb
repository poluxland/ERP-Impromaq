require "test_helper"

class CodigoStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codigo_status = codigo_statuses(:one)
  end

  test "should get index" do
    get codigo_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_codigo_status_url
    assert_response :success
  end

  test "should create codigo_status" do
    assert_difference('CodigoStatus.count') do
      post codigo_statuses_url, params: { codigo_status: { codigo_id: @codigo_status.codigo_id, estado: @codigo_status.estado, estructura: @codigo_status.estructura, fecha: @codigo_status.fecha, fuga: @codigo_status.fuga, housekeep: @codigo_status.housekeep, ruidio: @codigo_status.ruidio, temp: @codigo_status.temp, vibracion: @codigo_status.vibracion } }
    end

    assert_redirected_to codigo_status_url(CodigoStatus.last)
  end

  test "should show codigo_status" do
    get codigo_status_url(@codigo_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_codigo_status_url(@codigo_status)
    assert_response :success
  end

  test "should update codigo_status" do
    patch codigo_status_url(@codigo_status), params: { codigo_status: { codigo_id: @codigo_status.codigo_id, estado: @codigo_status.estado, estructura: @codigo_status.estructura, fecha: @codigo_status.fecha, fuga: @codigo_status.fuga, housekeep: @codigo_status.housekeep, ruidio: @codigo_status.ruidio, temp: @codigo_status.temp, vibracion: @codigo_status.vibracion } }
    assert_redirected_to codigo_status_url(@codigo_status)
  end

  test "should destroy codigo_status" do
    assert_difference('CodigoStatus.count', -1) do
      delete codigo_status_url(@codigo_status)
    end

    assert_redirected_to codigo_statuses_url
  end
end
