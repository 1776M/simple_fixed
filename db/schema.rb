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

ActiveRecord::Schema.define(:version => 20110528113752) do

  create_table "actannuals", :force => true do |t|
    t.float    "year_one"
    t.float    "year_two"
    t.float    "year_three"
    t.float    "year_four"
    t.float    "year_five"
    t.float    "year_six"
    t.float    "year_seven"
    t.float    "year_eight"
    t.float    "year_nine"
    t.float    "year_ten"
    t.integer  "scenario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actannuals", ["scenario_id"], :name => "index_actannuals_on_scenario_id"

  create_table "actborrowings", :force => true do |t|
    t.float    "size"
    t.float    "coupon"
    t.integer  "issue_year"
    t.integer  "maturity_year"
    t.string   "fixed_float"
    t.string   "currency"
    t.integer  "scenario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "top_borrowing"
  end

  add_index "actborrowings", ["scenario_id"], :name => "index_actborrowings_on_scenario_id"

  create_table "annuals", :force => true do |t|
    t.float    "year_one"
    t.float    "year_two"
    t.float    "year_three"
    t.float    "year_four"
    t.float    "year_five"
    t.float    "year_six"
    t.float    "year_seven"
    t.float    "year_eight"
    t.float    "year_nine"
    t.float    "year_ten"
    t.integer  "basecase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "annuals", ["basecase_id"], :name => "index_annuals_on_basecase_id"

  create_table "basecases", :force => true do |t|
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       :default => "Core data"
  end

  add_index "basecases", ["group_id"], :name => "index_coredata_on_group_id"

  create_table "borrowings", :force => true do |t|
    t.float    "size"
    t.float    "coupon"
    t.integer  "issue_year"
    t.integer  "maturity_year"
    t.string   "fixed_float"
    t.string   "currency"
    t.integer  "basecase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrowings", ["basecase_id"], :name => "index_borrowings_on_basecase_id"

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "scenarios", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scenarios", ["project_id"], :name => "index_scenarios_on_project_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
    t.integer  "group_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["group_id"], :name => "index_users_on_group_id"
  add_index "users", ["name"], :name => "index_users_on_name", :unique => true

end
