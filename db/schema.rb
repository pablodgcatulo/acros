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

ActiveRecord::Schema.define(version: 20160412150918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dominios", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre",     limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "participantes", force: :cascade do |t|
    t.string   "nombre",                limit: 30
    t.string   "apellido",              limit: 30
    t.integer  "empresa_id"
    t.integer  "tipo_de_documento_id"
    t.string   "numero_de_documento",   limit: 10
    t.string   "celular",               limit: 30
    t.string   "email"
    t.string   "funcion_o_area"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "talento_guardado_1_id"
    t.integer  "talento_guardado_2_id"
    t.integer  "talento_guardado_3_id"
    t.integer  "talento_guardado_4_id"
    t.integer  "talento_guardado_5_id"
  end

  add_index "participantes", ["empresa_id"], name: "index_participantes_on_empresa_id", using: :btree
  add_index "participantes", ["tipo_de_documento_id"], name: "index_participantes_on_tipo_de_documento_id", using: :btree

  create_table "talentos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "dominio_id"
    t.string   "libro"
    t.string   "pelicula"
    t.json     "docx_json"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_de_documentos", force: :cascade do |t|
    t.string   "nombre",     limit: 40
    t.string   "codigo",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "participantes", "empresas"
  add_foreign_key "participantes", "tipos_de_documentos"
end
