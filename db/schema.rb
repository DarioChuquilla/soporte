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

ActiveRecord::Schema.define(version: 20180524055329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comentarios", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "incidencia_id"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["incidencia_id"], name: "index_comentarios_on_incidencia_id", using: :btree
  add_index "comentarios", ["user_id"], name: "index_comentarios_on_user_id", using: :btree

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentos", ["user_id"], name: "index_departamentos_on_user_id", using: :btree

  create_table "incidencias", force: :cascade do |t|
    t.string   "tipo_error"
    t.datetime "fecha_error"
    t.text     "descripcion_solucion"
    t.string   "codigo_error"
    t.text     "descripcion"
    t.string   "fuente_error"
    t.datetime "fecha_escalamiento"
    t.integer  "user_id"
    t.integer  "departamento_id"
    t.string   "estado"
    t.text     "descripcion_estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "responsable_cierre_id"
  end

  add_index "incidencias", ["departamento_id"], name: "index_incidencias_on_departamento_id", using: :btree
  add_index "incidencias", ["user_id"], name: "index_incidencias_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "user_mesas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "departamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_mesas", ["departamento_id"], name: "index_user_mesas_on_departamento_id", using: :btree
  add_index "user_mesas", ["user_id"], name: "index_user_mesas_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar"
    t.string   "nombre"
    t.string   "apellido"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
