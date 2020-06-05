require "application_system_test_case"

class EnvasadorasTest < ApplicationSystemTestCase
  setup do
    @envasadora = envasadoras(:one)
  end

  test "visiting the index" do
    visit envasadoras_url
    assert_selector "h1", text: "Envasadoras"
  end

  test "creating a Envasadora" do
    visit envasadoras_url
    click_on "New Envasadora"

    fill_in "Adicional", with: @envasadora.adicional
    fill_in "Adicional mantbigbbag", with: @envasadora.adicional_mantbigbbag
    fill_in "Adicional mantenv", with: @envasadora.adicional_mantenv
    fill_in "Adicional mantgranel", with: @envasadora.adicional_mantgranel
    fill_in "Adicional manthaver", with: @envasadora.adicional_manthaver
    fill_in "Adicional mantp1", with: @envasadora.adicional_mantp1
    fill_in "Adicional mantvento", with: @envasadora.adicional_mantvento
    fill_in "Barredora", with: @envasadora.barredora
    fill_in "Bobcat", with: @envasadora.bobcat
    fill_in "Camion tolva", with: @envasadora.camion_tolva
    fill_in "Cargador descargacaliza", with: @envasadora.cargador_descargacaliza
    fill_in "Cargador descargapuzolana", with: @envasadora.cargador_descargapuzolana
    fill_in "Cargador patio", with: @envasadora.cargador_patio
    fill_in "Cargador respaldo", with: @envasadora.cargador_respaldo
    fill_in "Descarga materiaprima", with: @envasadora.descarga_materiaprima
    fill_in "Descripcion fallarelevante", with: @envasadora.descripcion_fallarelevante
    fill_in "Descripcion tarearelevante", with: @envasadora.descripcion_tarearelevante
    fill_in "Despacho especialbigbag", with: @envasadora.despacho_especialbigbag
    fill_in "Despacho especialsacos", with: @envasadora.despacho_especialsacos
    fill_in "Despacho extrabigbag", with: @envasadora.despacho_extrabigbag
    fill_in "Despacho extrabigbag1t", with: @envasadora.despacho_extrabigbag1t
    fill_in "Despacho extrasacos", with: @envasadora.despacho_extrasacos
    fill_in "Despacho plusbigbag", with: @envasadora.despacho_plusbigbag
    fill_in "Despacho superbigbag", with: @envasadora.despacho_superbigbag
    fill_in "Ejecutado mantbigbag", with: @envasadora.ejecutado_mantbigbag
    fill_in "Ejecutado mantenv", with: @envasadora.ejecutado_mantenv
    fill_in "Ejecutado mantgranel", with: @envasadora.ejecutado_mantgranel
    fill_in "Ejecutado manthaver", with: @envasadora.ejecutado_manthaver
    fill_in "Ejecutado mantplanta1", with: @envasadora.ejecutado_mantplanta1
    fill_in "Ejecutado mantvento", with: @envasadora.ejecutado_mantvento
    fill_in "Excavadora", with: @envasadora.excavadora
    fill_in "Fecha", with: @envasadora.fecha
    fill_in "Hora fallarelevante", with: @envasadora.hora_fallarelevante
    fill_in "Horas disphaver", with: @envasadora.horas_disphaver
    fill_in "Horas dispventomatic", with: @envasadora.horas_dispventomatic
    fill_in "Horas efectivahaver", with: @envasadora.horas_efectivahaver
    fill_in "Horas efectivaventomatic", with: @envasadora.horas_efectivaventomatic
    fill_in "Horquilla cargabigbag", with: @envasadora.horquilla_cargabigbag
    fill_in "Horquilla haver", with: @envasadora.horquilla_haver
    fill_in "Horquilla llenadobigbag", with: @envasadora.horquilla_llenadobigbag
    fill_in "Horquilla respaldo3t", with: @envasadora.horquilla_respaldo3t
    fill_in "Horquilla respaldo7t", with: @envasadora.horquilla_respaldo7t
    fill_in "Horquilla serv", with: @envasadora.horquilla_serv
    fill_in "Horquilla vento", with: @envasadora.horquilla_vento
    fill_in "Linea tarearelevante", with: @envasadora.linea_tarearelevante
    fill_in "Medida1 silo19", with: @envasadora.medida1_silo19
    fill_in "Medida1 silo20", with: @envasadora.medida1_silo20
    fill_in "Medida1 silo21", with: @envasadora.medida1_silo21
    fill_in "Medida1 silo22", with: @envasadora.medida1_silo22
    fill_in "Medida2 silo19", with: @envasadora.medida2_silo19
    fill_in "Medida2 silo20", with: @envasadora.medida2_silo20
    fill_in "Medida2 silo21", with: @envasadora.medida2_silo21
    fill_in "Medida2 silo22", with: @envasadora.medida2_silo22
    fill_in "Medida silo27", with: @envasadora.medida_silo27
    fill_in "Medida silo28", with: @envasadora.medida_silo28
    fill_in "Medida tolva1bigbag", with: @envasadora.medida_tolva1bigbag
    fill_in "Medida tolva1s3000", with: @envasadora.medida_tolva1s3000
    fill_in "Medida tolva1vento", with: @envasadora.medida_tolva1vento
    fill_in "Medida tolva2bigbag", with: @envasadora.medida_tolva2bigbag
    fill_in "Medida tolva2vento", with: @envasadora.medida_tolva2vento
    fill_in "Medida tolva3vento", with: @envasadora.medida_tolva3vento
    fill_in "Medida tolva4s3000", with: @envasadora.medida_tolva4s3000
    fill_in "Medida tolva5s28", with: @envasadora.medida_tolva5s28
    fill_in "Medida tolva5s3000", with: @envasadora.medida_tolva5s3000
    fill_in "Num adicional", with: @envasadora.num_adicional
    fill_in "Num adicional2", with: @envasadora.num_adicional2
    fill_in "Num adicional3", with: @envasadora.num_adicional3
    fill_in "Obs mantbigbag", with: @envasadora.obs_mantbigbag
    fill_in "Obs mantenv", with: @envasadora.obs_mantenv
    fill_in "Obs mantgranel", with: @envasadora.obs_mantgranel
    fill_in "Obs manthaver", with: @envasadora.obs_manthaver
    fill_in "Obs mantp1", with: @envasadora.obs_mantp1
    fill_in "Obs mantvento", with: @envasadora.obs_mantvento
    fill_in "Observacion prodhaver", with: @envasadora.observacion_prodhaver
    fill_in "Observacion prodvento", with: @envasadora.observacion_prodvento
    fill_in "Observaciones", with: @envasadora.observaciones
    fill_in "Ot tarearelevante", with: @envasadora.ot_tarearelevante
    fill_in "Produccion haver", with: @envasadora.produccion_haver
    fill_in "Produccion ventomatic", with: @envasadora.produccion_ventomatic
    fill_in "Producto tolva1bigbag", with: @envasadora.producto_tolva1bigbag
    fill_in "Producto tolva1s3000", with: @envasadora.producto_tolva1s3000
    fill_in "Producto tolva1vento", with: @envasadora.producto_tolva1vento
    fill_in "Producto tolva2bigbag", with: @envasadora.producto_tolva2bigbag
    fill_in "Producto tolva2vento", with: @envasadora.producto_tolva2vento
    fill_in "Producto tolva3vento", with: @envasadora.producto_tolva3vento
    fill_in "Producto tolva4s3000", with: @envasadora.producto_tolva4s3000
    fill_in "Producto tolva5s28", with: @envasadora.producto_tolva5s28
    fill_in "Producto tolva5s3000", with: @envasadora.producto_tolva5s3000
    fill_in "Programa especialbigbag", with: @envasadora.programa_especialbigbag
    fill_in "Programa especialsacos", with: @envasadora.programa_especialsacos
    fill_in "Programa extrabigbag", with: @envasadora.programa_extrabigbag
    fill_in "Programa extrabigbag1t", with: @envasadora.programa_extrabigbag1t
    fill_in "Programa extrasacos", with: @envasadora.programa_extrasacos
    fill_in "Programa mantbigbag", with: @envasadora.programa_mantbigbag
    fill_in "Programa mantenv", with: @envasadora.programa_mantenv
    fill_in "Programa mantgranel", with: @envasadora.programa_mantgranel
    fill_in "Programa manthaver", with: @envasadora.programa_manthaver
    fill_in "Programa mantplanta1", with: @envasadora.programa_mantplanta1
    fill_in "Programa mantvento", with: @envasadora.programa_mantvento
    fill_in "Programa plusbigbag", with: @envasadora.programa_plusbigbag
    fill_in "Programa superbigbag", with: @envasadora.programa_superbigbag
    fill_in "Respaldo descargamateriaprima", with: @envasadora.respaldo_descargamateriaprima
    fill_in "Stock bigbagespaecial", with: @envasadora.stock_bigbagespaecial
    fill_in "Stock bigbagextra", with: @envasadora.stock_bigbagextra
    fill_in "Stock bigbagplus", with: @envasadora.stock_bigbagplus
    fill_in "Stock bigbagsuper", with: @envasadora.stock_bigbagsuper
    fill_in "Stock sacosespecial", with: @envasadora.stock_sacosespecial
    fill_in "Stock sacosextra", with: @envasadora.stock_sacosextra
    fill_in "Tipo fallarelevante", with: @envasadora.tipo_fallarelevante
    click_on "Create Envasadora"

    assert_text "Envasadora was successfully created"
    click_on "Back"
  end

  test "updating a Envasadora" do
    visit envasadoras_url
    click_on "Edit", match: :first

    fill_in "Adicional", with: @envasadora.adicional
    fill_in "Adicional mantbigbbag", with: @envasadora.adicional_mantbigbbag
    fill_in "Adicional mantenv", with: @envasadora.adicional_mantenv
    fill_in "Adicional mantgranel", with: @envasadora.adicional_mantgranel
    fill_in "Adicional manthaver", with: @envasadora.adicional_manthaver
    fill_in "Adicional mantp1", with: @envasadora.adicional_mantp1
    fill_in "Adicional mantvento", with: @envasadora.adicional_mantvento
    fill_in "Barredora", with: @envasadora.barredora
    fill_in "Bobcat", with: @envasadora.bobcat
    fill_in "Camion tolva", with: @envasadora.camion_tolva
    fill_in "Cargador descargacaliza", with: @envasadora.cargador_descargacaliza
    fill_in "Cargador descargapuzolana", with: @envasadora.cargador_descargapuzolana
    fill_in "Cargador patio", with: @envasadora.cargador_patio
    fill_in "Cargador respaldo", with: @envasadora.cargador_respaldo
    fill_in "Descarga materiaprima", with: @envasadora.descarga_materiaprima
    fill_in "Descripcion fallarelevante", with: @envasadora.descripcion_fallarelevante
    fill_in "Descripcion tarearelevante", with: @envasadora.descripcion_tarearelevante
    fill_in "Despacho especialbigbag", with: @envasadora.despacho_especialbigbag
    fill_in "Despacho especialsacos", with: @envasadora.despacho_especialsacos
    fill_in "Despacho extrabigbag", with: @envasadora.despacho_extrabigbag
    fill_in "Despacho extrabigbag1t", with: @envasadora.despacho_extrabigbag1t
    fill_in "Despacho extrasacos", with: @envasadora.despacho_extrasacos
    fill_in "Despacho plusbigbag", with: @envasadora.despacho_plusbigbag
    fill_in "Despacho superbigbag", with: @envasadora.despacho_superbigbag
    fill_in "Ejecutado mantbigbag", with: @envasadora.ejecutado_mantbigbag
    fill_in "Ejecutado mantenv", with: @envasadora.ejecutado_mantenv
    fill_in "Ejecutado mantgranel", with: @envasadora.ejecutado_mantgranel
    fill_in "Ejecutado manthaver", with: @envasadora.ejecutado_manthaver
    fill_in "Ejecutado mantplanta1", with: @envasadora.ejecutado_mantplanta1
    fill_in "Ejecutado mantvento", with: @envasadora.ejecutado_mantvento
    fill_in "Excavadora", with: @envasadora.excavadora
    fill_in "Fecha", with: @envasadora.fecha
    fill_in "Hora fallarelevante", with: @envasadora.hora_fallarelevante
    fill_in "Horas disphaver", with: @envasadora.horas_disphaver
    fill_in "Horas dispventomatic", with: @envasadora.horas_dispventomatic
    fill_in "Horas efectivahaver", with: @envasadora.horas_efectivahaver
    fill_in "Horas efectivaventomatic", with: @envasadora.horas_efectivaventomatic
    fill_in "Horquilla cargabigbag", with: @envasadora.horquilla_cargabigbag
    fill_in "Horquilla haver", with: @envasadora.horquilla_haver
    fill_in "Horquilla llenadobigbag", with: @envasadora.horquilla_llenadobigbag
    fill_in "Horquilla respaldo3t", with: @envasadora.horquilla_respaldo3t
    fill_in "Horquilla respaldo7t", with: @envasadora.horquilla_respaldo7t
    fill_in "Horquilla serv", with: @envasadora.horquilla_serv
    fill_in "Horquilla vento", with: @envasadora.horquilla_vento
    fill_in "Linea tarearelevante", with: @envasadora.linea_tarearelevante
    fill_in "Medida1 silo19", with: @envasadora.medida1_silo19
    fill_in "Medida1 silo20", with: @envasadora.medida1_silo20
    fill_in "Medida1 silo21", with: @envasadora.medida1_silo21
    fill_in "Medida1 silo22", with: @envasadora.medida1_silo22
    fill_in "Medida2 silo19", with: @envasadora.medida2_silo19
    fill_in "Medida2 silo20", with: @envasadora.medida2_silo20
    fill_in "Medida2 silo21", with: @envasadora.medida2_silo21
    fill_in "Medida2 silo22", with: @envasadora.medida2_silo22
    fill_in "Medida silo27", with: @envasadora.medida_silo27
    fill_in "Medida silo28", with: @envasadora.medida_silo28
    fill_in "Medida tolva1bigbag", with: @envasadora.medida_tolva1bigbag
    fill_in "Medida tolva1s3000", with: @envasadora.medida_tolva1s3000
    fill_in "Medida tolva1vento", with: @envasadora.medida_tolva1vento
    fill_in "Medida tolva2bigbag", with: @envasadora.medida_tolva2bigbag
    fill_in "Medida tolva2vento", with: @envasadora.medida_tolva2vento
    fill_in "Medida tolva3vento", with: @envasadora.medida_tolva3vento
    fill_in "Medida tolva4s3000", with: @envasadora.medida_tolva4s3000
    fill_in "Medida tolva5s28", with: @envasadora.medida_tolva5s28
    fill_in "Medida tolva5s3000", with: @envasadora.medida_tolva5s3000
    fill_in "Num adicional", with: @envasadora.num_adicional
    fill_in "Num adicional2", with: @envasadora.num_adicional2
    fill_in "Num adicional3", with: @envasadora.num_adicional3
    fill_in "Obs mantbigbag", with: @envasadora.obs_mantbigbag
    fill_in "Obs mantenv", with: @envasadora.obs_mantenv
    fill_in "Obs mantgranel", with: @envasadora.obs_mantgranel
    fill_in "Obs manthaver", with: @envasadora.obs_manthaver
    fill_in "Obs mantp1", with: @envasadora.obs_mantp1
    fill_in "Obs mantvento", with: @envasadora.obs_mantvento
    fill_in "Observacion prodhaver", with: @envasadora.observacion_prodhaver
    fill_in "Observacion prodvento", with: @envasadora.observacion_prodvento
    fill_in "Observaciones", with: @envasadora.observaciones
    fill_in "Ot tarearelevante", with: @envasadora.ot_tarearelevante
    fill_in "Produccion haver", with: @envasadora.produccion_haver
    fill_in "Produccion ventomatic", with: @envasadora.produccion_ventomatic
    fill_in "Producto tolva1bigbag", with: @envasadora.producto_tolva1bigbag
    fill_in "Producto tolva1s3000", with: @envasadora.producto_tolva1s3000
    fill_in "Producto tolva1vento", with: @envasadora.producto_tolva1vento
    fill_in "Producto tolva2bigbag", with: @envasadora.producto_tolva2bigbag
    fill_in "Producto tolva2vento", with: @envasadora.producto_tolva2vento
    fill_in "Producto tolva3vento", with: @envasadora.producto_tolva3vento
    fill_in "Producto tolva4s3000", with: @envasadora.producto_tolva4s3000
    fill_in "Producto tolva5s28", with: @envasadora.producto_tolva5s28
    fill_in "Producto tolva5s3000", with: @envasadora.producto_tolva5s3000
    fill_in "Programa especialbigbag", with: @envasadora.programa_especialbigbag
    fill_in "Programa especialsacos", with: @envasadora.programa_especialsacos
    fill_in "Programa extrabigbag", with: @envasadora.programa_extrabigbag
    fill_in "Programa extrabigbag1t", with: @envasadora.programa_extrabigbag1t
    fill_in "Programa extrasacos", with: @envasadora.programa_extrasacos
    fill_in "Programa mantbigbag", with: @envasadora.programa_mantbigbag
    fill_in "Programa mantenv", with: @envasadora.programa_mantenv
    fill_in "Programa mantgranel", with: @envasadora.programa_mantgranel
    fill_in "Programa manthaver", with: @envasadora.programa_manthaver
    fill_in "Programa mantplanta1", with: @envasadora.programa_mantplanta1
    fill_in "Programa mantvento", with: @envasadora.programa_mantvento
    fill_in "Programa plusbigbag", with: @envasadora.programa_plusbigbag
    fill_in "Programa superbigbag", with: @envasadora.programa_superbigbag
    fill_in "Respaldo descargamateriaprima", with: @envasadora.respaldo_descargamateriaprima
    fill_in "Stock bigbagespaecial", with: @envasadora.stock_bigbagespaecial
    fill_in "Stock bigbagextra", with: @envasadora.stock_bigbagextra
    fill_in "Stock bigbagplus", with: @envasadora.stock_bigbagplus
    fill_in "Stock bigbagsuper", with: @envasadora.stock_bigbagsuper
    fill_in "Stock sacosespecial", with: @envasadora.stock_sacosespecial
    fill_in "Stock sacosextra", with: @envasadora.stock_sacosextra
    fill_in "Tipo fallarelevante", with: @envasadora.tipo_fallarelevante
    click_on "Update Envasadora"

    assert_text "Envasadora was successfully updated"
    click_on "Back"
  end

  test "destroying a Envasadora" do
    visit envasadoras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Envasadora was successfully destroyed"
  end
end
