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

ActiveRecord::Schema.define(version: 20201230185551) do

  create_table "estimates", force: :cascade do |t|
    t.string  "project_id"
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
    t.string "estimating_number"
    t.string "project_title"
    t.string "address"
    t.string "city"
    t.string "state_abbrv"
    t.string "zip"
    t.string "no_site"
  end

  create_table "summaries", force: :cascade do |t|
    t.integer "estimate_id"
    t.integer "demolition"
    t.integer "abatement"
    t.integer "fencing"
    t.integer "sitework"
    t.integer "waterfront_access_and_bulkhead"
    t.integer "site_concrete"
    t.integer "asphalt_paving_and_striping"
    t.integer "landscaping"
    t.integer "piles"
    t.integer "ground_improvements"
    t.integer "concrete"
    t.integer "precast_concrete_panels"
    t.integer "masonry"
    t.integer "structural_steel"
    t.integer "miscellaneous_metals"
    t.integer "millwork"
    t.integer "eifs"
    t.integer "roofing"
    t.integer "thermal_and_moisture_protection"
    t.integer "metal_panels"
    t.integer "prefab_facade_mega_panels"
    t.integer "applied_fireproofing"
    t.integer "doors_frames_and_hardware"
    t.integer "overhead_doors"
    t.integer "glass_and_glazing"
    t.integer "carpentry_and_drywall"
    t.integer "tile"
    t.integer "flooring"
    t.integer "paint_and_wallcovering"
    t.integer "signage"
    t.integer "division_10_specialties"
    t.integer "loading_dock_equipment"
    t.integer "kitchen_equipment"
    t.integer "operable_partitions"
    t.integer "vertical_transportation"
    t.integer "fire_supression"
    t.integer "plumbing"
    t.integer "hvac"
    t.integer "electric"
    t.integer "final_cleaning"
    t.integer "general_requirements"
    t.integer "site_safety"
    t.integer "site_security"
    t.string  "contingency_pct"
    t.string  "sdi_pct"
    t.string  "general_conditions_pct"
    t.string  "fee_pct"
    t.string  "insurance_pct"
  end

end
