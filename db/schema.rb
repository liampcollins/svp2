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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140917161310) do

  create_table "authentications", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "case_studies", :force => true do |t|
    t.string   "name"
    t.string   "prog_type"
    t.text     "description"
    t.string   "cs_image"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "webiste_url"
  end

  create_table "members", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programmes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "prog_type"
    t.string   "location"
    t.string   "duration"
    t.integer  "funding_offered"
    t.string   "website_url"
    t.integer  "founded"
    t.date     "next_prog"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "prog_image"
    t.string   "continent"
    t.string   "country"
    t.string   "city"
    t.string   "lat"
    t.string   "long"
  end

  create_table "programmes_users", :id => false, :force => true do |t|
    t.integer "programme_id"
    t.integer "user_id"
  end

  create_table "programmes_ventures", :id => false, :force => true do |t|
    t.integer "programme_id"
    t.integer "venture_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "username"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "user_image"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_ventures", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "venture_id"
  end

  create_table "ventures", :force => true do |t|
    t.string   "name"
    t.string   "sector"
    t.string   "location"
    t.text     "description"
    t.integer  "founded"
    t.text     "founder"
    t.string   "org_type"
    t.integer  "num_employees"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "vent_image"
    t.string   "title"
  end

end
