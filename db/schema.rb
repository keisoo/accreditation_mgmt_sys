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

ActiveRecord::Schema.define(version: 20170301054848) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_areas_on_user_id"
  end

  create_table "areas_documents", id: false, force: :cascade do |t|
    t.integer "area_id",     null: false
    t.integer "document_id", null: false
    t.index ["area_id", "document_id"], name: "index_areas_documents_on_area_id_and_document_id"
    t.index ["document_id", "area_id"], name: "index_areas_documents_on_document_id_and_area_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "document_file"
    t.boolean  "is_starred"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.text     "description"
    t.boolean  "is_personalfiles"
    t.datetime "deleted_at"
    t.boolean  "is_accepted",      default: false
    t.integer  "line_id"
    t.index ["deleted_at"], name: "index_documents_on_deleted_at"
    t.index ["line_id"], name: "index_documents_on_line_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_id"
    t.text     "tags"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "indicator_name", default: ""
    t.index ["number_id"], name: "index_lines_on_number_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.text     "message"
    t.boolean  "is_seen",     default: false
    t.integer  "document_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_accepted"
    t.index ["document_id"], name: "index_notifications_on_document_id"
  end

  create_table "numbers", force: :cascade do |t|
    t.string   "name"
    t.integer  "parameter_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["parameter_id"], name: "index_numbers_on_parameter_id"
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_parameters_on_area_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.string   "role"
    t.integer  "area_id"
    t.integer  "parent_user_id"
    t.string   "username"
    t.index ["area_id"], name: "index_users_on_area_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["parent_user_id"], name: "index_users_on_parent_user_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
