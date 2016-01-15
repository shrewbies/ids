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

ActiveRecord::Schema.define(version: 20160113211051) do

  create_table "alerts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "sid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "idsalerts", force: :cascade do |t|
    t.integer  "sid"
    t.integer  "cid"
    t.string   "signisture"
    t.integer  "signature_gen"
    t.integer  "signature_id"
    t.integer  "signature_rev"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unified_event_id"
    t.integer  "unified_event_ref"
    t.integer  "unified_ref_time"
    t.integer  "priority"
    t.string   "class"
    t.integer  "status"
    t.integer  "src_ip"
    t.integer  "dst_ip"
    t.integer  "src_port"
    t.integer  "dst_port"
    t.integer  "icmp_type"
    t.integer  "icmp_code"
    t.integer  "ip_proto"
    t.integer  "ip_ver"
    t.integer  "ip_hlen"
    t.integer  "ip_tos"
    t.integer  "ip_len"
    t.integer  "ip_id"
    t.integer  "ip_flags"
    t.integer  "ip_off"
    t.integer  "ip_ttl"
    t.integer  "ip_csum"
    t.datetime "last_modified"
    t.integer  "last_uid"
  end

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
