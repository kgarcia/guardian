# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151204053117) do

  create_table "centros", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "parroquia_id"
    t.integer  "electores"
    t.integer  "mesas"
    t.integer  "testigos"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "municipio_id"
  end

  add_index "centros", ["codigo"], name: "index_centros_on_codigo"
  add_index "centros", ["municipio_id"], name: "index_centros_on_municipio_id"
  add_index "centros", ["parroquia_id"], name: "index_centros_on_parroquia_id"

  create_table "circuitos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mesas", force: :cascade do |t|
    t.string   "numero"
    t.integer  "centro_id"
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "lista",      default: 0, null: false
    t.integer  "teodoro",    default: 0, null: false
    t.integer  "marquina",   default: 0, null: false
    t.integer  "nulo",       default: 0, null: false
    t.integer  "votos",      default: 0, null: false
  end

  add_index "mesas", ["centro_id"], name: "index_mesas_on_centro_id"
  add_index "mesas", ["user_id"], name: "index_mesas_on_user_id"

  create_table "municipios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "circuito_idodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
    
  add_index "municipios", ["circuito_id"], name: "index_municipios_on_circuito_id"

  create_table "parroquia", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "municipio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "parroquia", ["municipio_id"], name: "index_parroquia_on_municipio_id"

  create_table "users", force: :cascade do |t|
    t.string   "cedula"
    t.string   "nombre"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
  end

  add_index "users", ["cedula"], name: "index_users_on_cedula", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
