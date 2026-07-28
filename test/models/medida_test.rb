require 'test_helper'

class MedidaTest < ActiveSupport::TestCase
  setup do
    @medida = Medida.new(
      silo19a: 10,
      silo19b: 10,
      silo20a: 12,
      silo20b: 12,
      silo21a: 20,
      silo21b: 20,
      silo22a: 15,
      silo22b: 15,
      silo27: 25,
      silo28: 5,
      extrsacos: 10,
      bigbagextra: 20,
      bigbagextra1: 30,
      bigbagextra1350: 40,
      especialsacos: 30,
      bigbagespecial: 20,
      bigbagsuper: 50,
      bigbag_extra_retiro: 60,
      super_3300_granel: 75,
      super_bigbag: 45,
      ultra_bigbag: 35
    )
  end

  test "calcula stock extra con silos 19 y 21 mas stock de piso" do
    assert_equal 3_100, @medida.stock_extra_ton
  end

  test "calcula stock ultra con silos 22 y 28 mas bigbag ultra" do
    assert_equal 3_000, @medida.stock_ultra_silo_ton
    assert_equal 60, @medida.stock_ultra_piso_ton
    assert_equal 3_060, @medida.stock_ultra_ton
  end

  test "calcula stock total sin duplicar silos" do
    assert_equal 10_360, @medida.stock_total_ton
  end

  test "utiliza el campo super 3300 para despacho ultra" do
    assert_equal 75, @medida.desp_ultra_granel_ton
  end

  test "mantiene separados los despachos super y ultra bigbag" do
    assert_equal 45, @medida.desp_super_bigbag_ton
    assert_equal 35, @medida.desp_ultra_bigbag_ton
  end
end
