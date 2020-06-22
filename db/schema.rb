# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_19_200512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barcos", force: :cascade do |t|
    t.string "nombre"
    t.string "nave"
    t.boolean "barandas"
    t.boolean "colectores"
    t.boolean "vtolva1"
    t.boolean "vtolva2"
    t.boolean "al1"
    t.boolean "al2"
    t.boolean "compresorm"
    t.boolean "cabezalm"
    t.boolean "cabezald"
    t.boolean "polines"
    t.boolean "redaire"
    t.boolean "motoresbc03"
    t.boolean "techotolva"
    t.boolean "greating"
    t.boolean "alumbrado"
    t.boolean "caseta"
    t.boolean "ccmmuelle"
    t.boolean "c18"
    t.boolean "c19"
    t.integer "numero"
    t.text "observaciones"
    t.string "empresa"
    t.string "varios"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "checklists", force: :cascade do |t|
    t.string "nombre"
    t.string "equipo"
    t.string "operativo"
    t.string "horometro"
    t.boolean "c1"
    t.boolean "c2"
    t.boolean "c3"
    t.boolean "c4"
    t.boolean "c5"
    t.boolean "c6"
    t.boolean "c7"
    t.boolean "c8"
    t.boolean "c9"
    t.boolean "c10"
    t.boolean "c11"
    t.boolean "c12"
    t.boolean "c13"
    t.boolean "c14"
    t.boolean "c15"
    t.boolean "c16"
    t.boolean "c17"
    t.boolean "c18"
    t.boolean "c19"
    t.integer "combustible"
    t.integer "acmotor"
    t.integer "achidraulico"
    t.integer "actrans"
    t.integer "acatf"
    t.integer "acnuto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.string "nombre"
    t.string "planta"
    t.string "solicitud"
    t.text "observaciones"
    t.text "respuesta"
    t.string "otros"
    t.integer "monto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entregas", force: :cascade do |t|
    t.date "fecha"
    t.string "nombre"
    t.string "tipo"
    t.string "responsable"
    t.integer "antiguedad"
    t.string "observaciones"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "planta"
  end

  create_table "envasadoras", force: :cascade do |t|
    t.integer "stock_sacosespecial"
    t.integer "stock_sacosextra"
    t.integer "stock_bigbagespaecial"
    t.integer "stock_bigbagextra"
    t.integer "stock_bigbagplus"
    t.integer "stock_bigbagsuper"
    t.integer "produccion_haver"
    t.integer "horas_disphaver"
    t.integer "horas_efectivahaver"
    t.integer "produccion_ventomatic"
    t.integer "horas_dispventomatic"
    t.integer "horas_efectivaventomatic"
    t.integer "programa_especialsacos"
    t.integer "programa_extrasacos"
    t.integer "programa_especialbigbag"
    t.integer "programa_extrabigbag"
    t.integer "programa_extrabigbag1t"
    t.integer "programa_plusbigbag"
    t.integer "programa_superbigbag"
    t.integer "despacho_especialsacos"
    t.integer "despacho_extrasacos"
    t.integer "despacho_especialbigbag"
    t.integer "despacho_extrabigbag"
    t.integer "despacho_extrabigbag1t"
    t.integer "despacho_plusbigbag"
    t.integer "despacho_superbigbag"
    t.integer "medida1_silo19"
    t.integer "medida2_silo19"
    t.integer "medida1_silo20"
    t.integer "medida2_silo20"
    t.integer "medida1_silo21"
    t.integer "medida2_silo21"
    t.integer "medida1_silo22"
    t.integer "medida2_silo22"
    t.integer "medida_silo27"
    t.integer "medida_silo28"
    t.integer "medida_tolva5s28"
    t.integer "medida_tolva1vento"
    t.integer "medida_tolva2vento"
    t.integer "medida_tolva3vento"
    t.integer "medida_tolva1bigbag"
    t.integer "medida_tolva2bigbag"
    t.integer "medida_tolva1s3000"
    t.integer "medida_tolva4s3000"
    t.string "medida_tolva5s3000"
    t.string "producto_tolva5s28"
    t.string "producto_tolva1vento"
    t.string "producto_tolva2vento"
    t.string "producto_tolva3vento"
    t.string "producto_tolva1bigbag"
    t.string "producto_tolva2bigbag"
    t.string "producto_tolva1s3000"
    t.string "producto_tolva4s3000"
    t.string "producto_tolva5s3000"
    t.integer "programa_manthaver"
    t.integer "ejecutado_manthaver"
    t.integer "programa_mantvento"
    t.integer "ejecutado_mantvento"
    t.integer "programa_mantbigbag"
    t.integer "ejecutado_mantbigbag"
    t.integer "programa_mantgranel"
    t.integer "ejecutado_mantgranel"
    t.integer "programa_mantplanta1"
    t.integer "ejecutado_mantplanta1"
    t.integer "programa_mantenv"
    t.integer "ejecutado_mantenv"
    t.integer "adicional_manthaver"
    t.integer "adicional_mantvento"
    t.integer "adicional_mantbigbbag"
    t.string "adicional_mantgranel"
    t.integer "adicional_mantp1"
    t.integer "adicional_mantenv"
    t.string "obs_manthaver"
    t.string "obs_mantvento"
    t.string "obs_mantbigbag"
    t.string "obs_mantgranel"
    t.string "obs_mantp1"
    t.string "obs_mantenv"
    t.string "linea_tarearelevante"
    t.string "ot_tarearelevante"
    t.string "descripcion_tarearelevante"
    t.string "tipo_fallarelevante"
    t.integer "hora_fallarelevante"
    t.string "descripcion_fallarelevante"
    t.integer "descarga_materiaprima"
    t.integer "respaldo_descargamateriaprima"
    t.integer "excavadora"
    t.integer "camion_tolva"
    t.integer "barredora"
    t.integer "bobcat"
    t.integer "horquilla_serv"
    t.integer "horquilla_haver"
    t.integer "horquilla_vento"
    t.integer "horquilla_cargabigbag"
    t.integer "horquilla_llenadobigbag"
    t.integer "horquilla_respaldo7t"
    t.integer "horquilla_respaldo3t"
    t.integer "cargador_descargacaliza"
    t.integer "cargador_descargapuzolana"
    t.integer "cargador_respaldo"
    t.integer "cargador_patio"
    t.text "observaciones"
    t.date "fecha"
    t.string "observacion_prodhaver"
    t.string "observacion_prodvento"
    t.integer "num_adicional"
    t.integer "num_adicional2"
    t.integer "num_adicional3"
    t.string "adicional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipos", force: :cascade do |t|
    t.string "nombre"
    t.string "operador"
    t.integer "horometro"
    t.string "c1"
    t.string "c2"
    t.string "c3"
    t.string "c4"
    t.string "c5"
    t.string "c6"
    t.string "c7"
    t.string "c8"
    t.string "c9"
    t.string "c10"
    t.string "c11"
    t.string "c12"
    t.string "c13"
    t.string "c14"
    t.string "c15"
    t.string "c16"
    t.string "c17"
    t.string "c18"
    t.string "c19"
    t.string "c20"
    t.string "c21"
    t.string "c22"
    t.string "c23"
    t.string "c24"
    t.string "c25"
    t.string "c26"
    t.string "c27"
    t.string "c28"
    t.string "c29"
    t.string "c30"
    t.text "comentarios"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gastos", force: :cascade do |t|
    t.date "fecha"
    t.integer "rend"
    t.string "tipo"
    t.integer "num"
    t.string "descripcion"
    t.integer "valor"
    t.integer "iva"
    t.integer "neto"
    t.string "cc"
    t.string "resp"
    t.string "familia"
    t.integer "cot"
    t.string "aprobado"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horas", force: :cascade do |t|
    t.date "fecha"
    t.string "descripcion"
    t.string "area"
    t.string "personal"
    t.time "inicio"
    t.time "termino"
    t.float "he"
    t.integer "ot"
    t.string "traslado"
    t.string "lugar"
    t.string "mandante"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ep"
  end

  create_table "medidas", force: :cascade do |t|
    t.integer "silo19a"
    t.integer "silo19b"
    t.integer "silo20a"
    t.integer "silo20b"
    t.integer "silo21a"
    t.integer "silo21b"
    t.integer "silo22a"
    t.integer "silo22b"
    t.integer "silo27"
    t.integer "silo28"
    t.integer "especialsacos"
    t.integer "extrsacos"
    t.integer "bigbagextra"
    t.integer "bigbagextra1350"
    t.integer "bigbagextra1"
    t.integer "bigbagespecial"
    t.integer "bigbagsuper"
    t.integer "prodhaver"
    t.integer "prodvento"
    t.string "tolvacalle5"
    t.string "silos3000tolva1"
    t.string "silos3000tolva4"
    t.string "silos3000tolva5"
    t.string "silosbigbag1"
    t.string "silosbigbag2"
    t.string "silosvento1"
    t.string "silovento2"
    t.string "silovento3"
    t.integer "callesilo28"
    t.integer "callesplanta1"
    t.integer "callesilo27"
    t.string "observaciones"
    t.integer "otros"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requerimientos", force: :cascade do |t|
    t.string "nombre"
    t.string "planta"
    t.string "solicitud"
    t.text "observaciones"
    t.text "respuesta"
    t.string "otros"
    t.integer "monto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.string "estado"
    t.string "contact"
  end

  create_table "trabajos", force: :cascade do |t|
    t.string "planta"
    t.string "ito"
    t.string "descripcion"
    t.integer "total"
    t.string "fecha_termino"
    t.string "avance"
    t.integer "op"
    t.integer "factura"
    t.string "observaciones"
    t.string "i1"
    t.string "i2"
    t.string "i3"
    t.string "i4"
    t.string "i5"
    t.string "i6"
    t.string "i7"
    t.string "i8"
    t.string "i9"
    t.string "i10"
    t.string "i11"
    t.string "i12"
    t.integer "v1"
    t.integer "v2"
    t.integer "v3"
    t.integer "v4"
    t.integer "v5"
    t.integer "v6"
    t.integer "v7"
    t.integer "v8"
    t.integer "v9"
    t.integer "v10"
    t.integer "v11"
    t.integer "v12"
    t.string "centro_costo"
    t.string "supervisor"
    t.string "otros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "q1"
    t.integer "q2"
    t.integer "q3"
    t.integer "q4"
    t.integer "q5"
    t.integer "q6"
    t.integer "q7"
    t.integer "q8"
    t.integer "q9"
    t.integer "q10"
    t.integer "q11"
    t.integer "q12"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
