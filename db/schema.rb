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

ActiveRecord::Schema.define(version: 2020_05_07_201743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
