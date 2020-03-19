# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200319154857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "trabajos", force: :cascade do |t|
    t.string "planta"
    t.string "ito"
    t.string "descripcion"
    t.integer "total"
    t.string "fecha_termino"
    t.integer "avance"
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
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
