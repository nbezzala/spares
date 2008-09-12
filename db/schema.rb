# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080908085642) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id",   :limit => 11
    t.integer  "created_by",  :limit => 11
    t.integer  "updated_by",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "company_type"
    t.string   "status"
    t.text     "description"
    t.integer  "created_by",   :limit => 11
    t.integer  "updated_by",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id",  :limit => 11
  end

  create_table "locations", :force => true do |t|
    t.string   "line1",      :limit => 100
    t.string   "line2",      :limit => 100
    t.string   "city",       :limit => 100
    t.string   "state",      :limit => 50
    t.string   "pin",        :limit => 10
    t.string   "country",    :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id", :limit => 11
    t.integer  "created_by",  :limit => 11
    t.integer  "updated_by",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
