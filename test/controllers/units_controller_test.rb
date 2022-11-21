require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get units_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_url
    assert_response :success
  end

  test "should create unit" do
    assert_difference('Unit.count') do
      post units_url, params: { unit: { b11: @unit.b11, b12: @unit.b12, b13: @unit.b13, b14: @unit.b14, b15: @unit.b15, b16: @unit.b16, b17: @unit.b17, b18: @unit.b18, b21: @unit.b21, b22: @unit.b22, b23: @unit.b23, b24: @unit.b24, b25: @unit.b25, b26: @unit.b26, b27: @unit.b27, b28: @unit.b28, b31: @unit.b31, b32: @unit.b32, b33: @unit.b33, b34: @unit.b34, b35: @unit.b35, b36: @unit.b36, b37: @unit.b37, b38: @unit.b38, b41: @unit.b41, b42: @unit.b42, b43: @unit.b43, b44: @unit.b44, b45: @unit.b45, b46: @unit.b46, b47: @unit.b47, b48: @unit.b48, b51: @unit.b51, b52: @unit.b52, b53: @unit.b53, b54: @unit.b54, b55: @unit.b55, b56: @unit.b56, b57: @unit.b57, b58: @unit.b58, b61: @unit.b61, b62: @unit.b62, b63: @unit.b63, b64: @unit.b64, b65: @unit.b65, b66: @unit.b66, b67: @unit.b67, b68: @unit.b68, b71: @unit.b71, b72: @unit.b72, b73: @unit.b73, b74: @unit.b74, b75: @unit.b75, b76: @unit.b76, b77: @unit.b77, b78: @unit.b78, h11: @unit.h11, h12: @unit.h12, h13: @unit.h13, h14: @unit.h14, h15: @unit.h15, h16: @unit.h16, h17: @unit.h17, h18: @unit.h18, h21: @unit.h21, h22: @unit.h22, h23: @unit.h23, h24: @unit.h24, h25: @unit.h25, h26: @unit.h26, h27: @unit.h27, h28: @unit.h28, h31: @unit.h31, h32: @unit.h32, h33: @unit.h33, h34: @unit.h34, h35: @unit.h35, h36: @unit.h36, h37: @unit.h37, h38: @unit.h38, h41: @unit.h41, h42: @unit.h42, h43: @unit.h43, h44: @unit.h44, h45: @unit.h45, h46: @unit.h46, h47: @unit.h47, h48: @unit.h48, h51: @unit.h51, h52: @unit.h52, h53: @unit.h53, h54: @unit.h54, h55: @unit.h55, h56: @unit.h56, h57: @unit.h57, h58: @unit.h58, h61: @unit.h61, h62: @unit.h62, h63: @unit.h63, h64: @unit.h64, h65: @unit.h65, h66: @unit.h66, h67: @unit.h67, h68: @unit.h68, h71: @unit.h71, h72: @unit.h72, h73: @unit.h73, h74: @unit.h74, h75: @unit.h75, h76: @unit.h76, h77: @unit.h77, h78: @unit.h78, o11: @unit.o11, o12: @unit.o12, o13: @unit.o13, o14: @unit.o14, o15: @unit.o15, o16: @unit.o16, o17: @unit.o17, o18: @unit.o18, o21: @unit.o21, o22: @unit.o22, o23: @unit.o23, o24: @unit.o24, o25: @unit.o25, o26: @unit.o26, o27: @unit.o27, o28: @unit.o28, o31: @unit.o31, o32: @unit.o32, o33: @unit.o33, o34: @unit.o34, o35: @unit.o35, o36: @unit.o36, o37: @unit.o37, o38: @unit.o38, o41: @unit.o41, o42: @unit.o42, o43: @unit.o43, o44: @unit.o44, o45: @unit.o45, o46: @unit.o46, o47: @unit.o47, o48: @unit.o48, o51: @unit.o51, o52: @unit.o52, o53: @unit.o53, o54: @unit.o54, o55: @unit.o55, o56: @unit.o56, o57: @unit.o57, o58: @unit.o58, o61: @unit.o61, o62: @unit.o62, o63: @unit.o63, o64: @unit.o64, o65: @unit.o65, o66: @unit.o66, o67: @unit.o67, o68: @unit.o68, o71: @unit.o71, o72: @unit.o72, o73: @unit.o73, o74: @unit.o74, o75: @unit.o75, o76: @unit.o76, o77: @unit.o77, o78: @unit.o78, o81: @unit.o81, o82: @unit.o82, o83: @unit.o83, o84: @unit.o84, o85: @unit.o85, o86: @unit.o86, o87: @unit.o87, o88: @unit.o88, observaciones: @unit.observaciones } }
    end

    assert_redirected_to unit_url(Unit.last)
  end

  test "should show unit" do
    get unit_url(@unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_url(@unit)
    assert_response :success
  end

  test "should update unit" do
    patch unit_url(@unit), params: { unit: { b11: @unit.b11, b12: @unit.b12, b13: @unit.b13, b14: @unit.b14, b15: @unit.b15, b16: @unit.b16, b17: @unit.b17, b18: @unit.b18, b21: @unit.b21, b22: @unit.b22, b23: @unit.b23, b24: @unit.b24, b25: @unit.b25, b26: @unit.b26, b27: @unit.b27, b28: @unit.b28, b31: @unit.b31, b32: @unit.b32, b33: @unit.b33, b34: @unit.b34, b35: @unit.b35, b36: @unit.b36, b37: @unit.b37, b38: @unit.b38, b41: @unit.b41, b42: @unit.b42, b43: @unit.b43, b44: @unit.b44, b45: @unit.b45, b46: @unit.b46, b47: @unit.b47, b48: @unit.b48, b51: @unit.b51, b52: @unit.b52, b53: @unit.b53, b54: @unit.b54, b55: @unit.b55, b56: @unit.b56, b57: @unit.b57, b58: @unit.b58, b61: @unit.b61, b62: @unit.b62, b63: @unit.b63, b64: @unit.b64, b65: @unit.b65, b66: @unit.b66, b67: @unit.b67, b68: @unit.b68, b71: @unit.b71, b72: @unit.b72, b73: @unit.b73, b74: @unit.b74, b75: @unit.b75, b76: @unit.b76, b77: @unit.b77, b78: @unit.b78, h11: @unit.h11, h12: @unit.h12, h13: @unit.h13, h14: @unit.h14, h15: @unit.h15, h16: @unit.h16, h17: @unit.h17, h18: @unit.h18, h21: @unit.h21, h22: @unit.h22, h23: @unit.h23, h24: @unit.h24, h25: @unit.h25, h26: @unit.h26, h27: @unit.h27, h28: @unit.h28, h31: @unit.h31, h32: @unit.h32, h33: @unit.h33, h34: @unit.h34, h35: @unit.h35, h36: @unit.h36, h37: @unit.h37, h38: @unit.h38, h41: @unit.h41, h42: @unit.h42, h43: @unit.h43, h44: @unit.h44, h45: @unit.h45, h46: @unit.h46, h47: @unit.h47, h48: @unit.h48, h51: @unit.h51, h52: @unit.h52, h53: @unit.h53, h54: @unit.h54, h55: @unit.h55, h56: @unit.h56, h57: @unit.h57, h58: @unit.h58, h61: @unit.h61, h62: @unit.h62, h63: @unit.h63, h64: @unit.h64, h65: @unit.h65, h66: @unit.h66, h67: @unit.h67, h68: @unit.h68, h71: @unit.h71, h72: @unit.h72, h73: @unit.h73, h74: @unit.h74, h75: @unit.h75, h76: @unit.h76, h77: @unit.h77, h78: @unit.h78, o11: @unit.o11, o12: @unit.o12, o13: @unit.o13, o14: @unit.o14, o15: @unit.o15, o16: @unit.o16, o17: @unit.o17, o18: @unit.o18, o21: @unit.o21, o22: @unit.o22, o23: @unit.o23, o24: @unit.o24, o25: @unit.o25, o26: @unit.o26, o27: @unit.o27, o28: @unit.o28, o31: @unit.o31, o32: @unit.o32, o33: @unit.o33, o34: @unit.o34, o35: @unit.o35, o36: @unit.o36, o37: @unit.o37, o38: @unit.o38, o41: @unit.o41, o42: @unit.o42, o43: @unit.o43, o44: @unit.o44, o45: @unit.o45, o46: @unit.o46, o47: @unit.o47, o48: @unit.o48, o51: @unit.o51, o52: @unit.o52, o53: @unit.o53, o54: @unit.o54, o55: @unit.o55, o56: @unit.o56, o57: @unit.o57, o58: @unit.o58, o61: @unit.o61, o62: @unit.o62, o63: @unit.o63, o64: @unit.o64, o65: @unit.o65, o66: @unit.o66, o67: @unit.o67, o68: @unit.o68, o71: @unit.o71, o72: @unit.o72, o73: @unit.o73, o74: @unit.o74, o75: @unit.o75, o76: @unit.o76, o77: @unit.o77, o78: @unit.o78, o81: @unit.o81, o82: @unit.o82, o83: @unit.o83, o84: @unit.o84, o85: @unit.o85, o86: @unit.o86, o87: @unit.o87, o88: @unit.o88, observaciones: @unit.observaciones } }
    assert_redirected_to unit_url(@unit)
  end

  test "should destroy unit" do
    assert_difference('Unit.count', -1) do
      delete unit_url(@unit)
    end

    assert_redirected_to units_url
  end
end
