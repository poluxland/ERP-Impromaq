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
      super_3300_granel: 75
    )
  end

  test "calcula stock extra con silos 19 y 21 mas stock de piso" do
    assert_equal 3_100, @medida.stock_extra_ton
  end

  test "calcula stock ultra con silos 22 y 28" do
    assert_equal 3_000, @medida.stock_ultra_ton
  end

  test "calcula stock total sin duplicar silos" do
    assert_equal 10_300, @medida.stock_total_ton
  end

  test "utiliza el campo super 3300 para despacho ultra" do
    assert_equal 75, @medida.desp_ultra_granel_ton
  end
end
