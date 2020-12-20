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

ActiveRecord::Schema.define(version: 20201220221520) do

  create_table "estimates", force: :cascade do |t|
    t.string  "estimate_number"
    t.string  "submission_title"
    t.integer "revision"
    t.string  "scheme"
    t.string  "sector"
    t.string  "industry"
    t.string  "labor_status"
    t.string  "tax_status"
    t.string  "icap"
    t.string  "site_acerage"
    t.integer "gsf"
    t.string  "estimate_type"
    t.string  "design_phase"
    t.string  "result"
  end

  create_table "projects", force: :cascade do |t|
    t.string "estimate_number"
    t.string "project_title"
    t.string "address"
    t.string "city"
    t.string "state_abbrv"
    t.string "zip"
    t.string "no_site"
  end

end
