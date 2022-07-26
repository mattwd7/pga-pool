# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_19_222614) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "betting_pool_participant_golfer_picks", force: :cascade do |t|
    t.bigint "golfer_id", null: false
    t.bigint "betting_pool_participant_id", null: false
    t.bigint "betting_pool_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["betting_pool_id"], name: "index_better_pool_id_on_participant_picks"
    t.index ["betting_pool_participant_id"], name: "index_participant_id_on_participant_picks"
    t.index ["golfer_id", "betting_pool_id", "betting_pool_participant_id"], name: "no_duplicate_golfer_picks_per_participant_per_pool", unique: true
    t.index ["golfer_id"], name: "index_golfer_id_on_participant_picks"
  end

  create_table "betting_pool_participants", force: :cascade do |t|
    t.string "full_name"
    t.bigint "betting_pool_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["betting_pool_id"], name: "index_betting_pool_participants_on_betting_pool_id"
  end

  create_table "betting_pools", force: :cascade do |t|
    t.bigint "golf_tournament_id", null: false
    t.integer "roster_size"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["golf_tournament_id"], name: "index_betting_pools_on_golf_tournament_id"
    t.index ["user_id"], name: "index_betting_pools_on_user_id"
  end

  create_table "golf_tournaments", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "payouts", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "golfer_golf_tournaments", force: :cascade do |t|
    t.integer "rank"
    t.integer "payout"
    t.bigint "golf_tournament_id", null: false
    t.bigint "golfer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["golf_tournament_id"], name: "index_golfer_golf_tournaments_on_golf_tournament_id"
    t.index ["golfer_id", "golf_tournament_id"], name: "one_golfer_instance_per_tournament_index", unique: true
    t.index ["golfer_id"], name: "index_golfer_golf_tournaments_on_golfer_id"
  end

  create_table "golfers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "display_name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "betting_pool_participant_golfer_picks", "betting_pool_participants"
  add_foreign_key "betting_pool_participant_golfer_picks", "betting_pools"
  add_foreign_key "betting_pool_participant_golfer_picks", "golfers"
  add_foreign_key "betting_pool_participants", "betting_pools"
  add_foreign_key "betting_pools", "golf_tournaments"
  add_foreign_key "betting_pools", "users"
  add_foreign_key "golfer_golf_tournaments", "golf_tournaments"
  add_foreign_key "golfer_golf_tournaments", "golfers"
end
