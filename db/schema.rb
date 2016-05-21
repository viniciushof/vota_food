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

ActiveRecord::Schema.define(version: 20160514135448) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",            limit: 50, null: false
    t.date     "data_nascimento",            null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "pratos", force: :cascade do |t|
    t.string   "nome",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pratos", ["nome"], name: "index_pratos_on_nome", unique: true, using: :btree

  create_table "pratos_restaurantes", id: false, force: :cascade do |t|
    t.integer "prato_id",       limit: 4
    t.integer "restaurante_id", limit: 4
  end

  create_table "qualificacoes", force: :cascade do |t|
    t.integer  "nota",           limit: 4,  null: false
    t.float    "valor_gasto",    limit: 24, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "restaurante_id", limit: 4
    t.integer  "cliente_id",     limit: 4
  end

  create_table "receitas", force: :cascade do |t|
    t.text     "conteudo",   limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "prato_id",   limit: 4
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "nome",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "endereco",      limit: 255
    t.string   "especialidade", limit: 40
  end

end
