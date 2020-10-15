# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_10_213914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "results", force: :cascade do |t|
    t.string "description"
    t.integer "dev", default: 0
    t.integer "staging", default: 0
    t.bigint "scenario_id"
    t.index ["scenario_id"], name: "index_results_on_scenario_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "description"
    t.bigint "ticket_id"
    t.index ["ticket_id"], name: "index_scenarios_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "tracker"
    t.integer "issue_id"
    t.string "title"
    t.string "url_link"
    t.text "comment"
    t.integer "position"
    t.text "description"
  end

end
