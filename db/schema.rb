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

ActiveRecord::Schema.define(version: 20160422233115) do

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["game_id"], name: "index_players_on_game_id"

  create_table "turns", force: :cascade do |t|
    t.string   "name"
    t.integer  "game_id"
    t.integer  "player_id"
    t.string   "image"
    t.boolean  "lie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "turns", ["game_id"], name: "index_turns_on_game_id"
  add_index "turns", ["player_id"], name: "index_turns_on_player_id"

end
