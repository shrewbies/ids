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
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.integer  "sid",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",     limit: 4
  end

  create_table "idsalerts", force: :cascade do |t|
    t.integer  "sid",               limit: 4
    t.integer  "cid",               limit: 4
    t.string   "signisture",        limit: 255
    t.integer  "signature_gen",     limit: 4
    t.integer  "signature_id",      limit: 4
    t.integer  "signature_rev",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unified_event_id",  limit: 4
    t.integer  "unified_event_ref", limit: 4
    t.integer  "unified_ref_time",  limit: 4
    t.integer  "priority",          limit: 4
    t.string   "class",             limit: 255
    t.integer  "status",            limit: 4
    t.integer  "src_ip",            limit: 4
    t.integer  "dst_ip",            limit: 4
    t.integer  "src_port",          limit: 4
    t.integer  "dst_port",          limit: 4
    t.integer  "icmp_type",         limit: 4
    t.integer  "icmp_code",         limit: 4
    t.integer  "ip_proto",          limit: 4
    t.integer  "ip_ver",            limit: 4
    t.integer  "ip_hlen",           limit: 4
    t.integer  "ip_tos",            limit: 4
    t.integer  "ip_len",            limit: 4
    t.integer  "ip_id",             limit: 4
    t.integer  "ip_flags",          limit: 4
    t.integer  "ip_off",            limit: 4
    t.integer  "ip_ttl",            limit: 4
    t.integer  "ip_csum",           limit: 4
    t.datetime "last_modified"
    t.integer  "last_uid",          limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
