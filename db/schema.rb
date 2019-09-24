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

ActiveRecord::Schema.define(version: 2019_08_29_192650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "resource1"
    t.string "resource2"
    t.string "red_tape1"
    t.string "red_tape2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_sheets", force: :cascade do |t|
    t.bigint "user_id"
    t.string "character_name"
    t.text "description"
    t.text "backstory"
    t.integer "harm"
    t.integer "luck"
    t.integer "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_character_sheets_on_user_id"
  end

  create_table "combat_magics", force: :cascade do |t|
    t.string "base"
    t.string "effect1"
    t.string "effect2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mystery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mystery_id"], name: "index_games_on_mystery_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "havens", force: :cascade do |t|
    t.string "name"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "tag4"
    t.string "tag5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hunter_moves", force: :cascade do |t|
    t.string "name"
    t.string "rating"
    t.string "description"
    t.string "partial_success"
    t.string "total_success"
    t.string "advanced_success"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "charactersheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charactersheet_id"], name: "index_inventories_on_charactersheet_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "inventory_id"
    t.string "name"
    t.string "description"
    t.string "tags"
    t.string "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_items_on_inventory_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.bigint "mystery_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mystery_id"], name: "index_monsters_on_mystery_id"
  end

  create_table "mysteries", force: :cascade do |t|
    t.string "name"
    t.string "concept"
    t.string "hook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playbooks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "fascimile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.integer "charm"
    t.integer "cool"
    t.integer "sharp"
    t.integer "tough"
    t.integer "weird"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_ratings_on_character_sheet_id"
  end

  create_table "sects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "good_tradition_1"
    t.string "good_tradition_2"
    t.string "bad_tradition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "the_chosen_moves", force: :cascade do |t|
    t.bigint "the_chosen_id"
    t.string "name"
    t.text "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_chosen_id"], name: "index_the_chosen_moves_on_the_chosen_id"
  end

  create_table "the_chosens", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "fate"
    t.string "heroic"
    t.string "doom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_chosens_on_character_sheet_id"
  end

  create_table "the_crooked_moves", force: :cascade do |t|
    t.bigint "the_crooked_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_crooked_id"], name: "index_the_crooked_moves_on_the_crooked_id"
  end

  create_table "the_crookeds", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "background"
    t.string "heat"
    t.string "underworld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_crookeds_on_character_sheet_id"
  end

  create_table "the_divine_moves", force: :cascade do |t|
    t.bigint "the_divine_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_divine_id"], name: "index_the_divine_moves_on_the_divine_id"
  end

  create_table "the_divines", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_divines_on_character_sheet_id"
  end

  create_table "the_expert_moves", force: :cascade do |t|
    t.bigint "the_expert_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_expert_id"], name: "index_the_expert_moves_on_the_expert_id"
  end

  create_table "the_experts", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.bigint "haven_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_experts_on_character_sheet_id"
    t.index ["haven_id"], name: "index_the_experts_on_haven_id"
  end

  create_table "the_flake_moves", force: :cascade do |t|
    t.bigint "the_flake_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_flake_id"], name: "index_the_flake_moves_on_the_flake_id"
  end

  create_table "the_flakes", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_flakes_on_character_sheet_id"
  end

  create_table "the_initiate_moves", force: :cascade do |t|
    t.bigint "the_initiate_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_initiate_id"], name: "index_the_initiate_moves_on_the_initiate_id"
  end

  create_table "the_initiates", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.bigint "sect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_initiates_on_character_sheet_id"
    t.index ["sect_id"], name: "index_the_initiates_on_sect_id"
  end

  create_table "the_monstrous", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "curse"
    t.string "natural_attack1"
    t.string "natural_attack2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_monstrous_on_character_sheet_id"
  end

  create_table "the_monstrous_moves", force: :cascade do |t|
    t.bigint "the_monstrous_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_monstrous_id"], name: "index_the_monstrous_moves_on_the_monstrous_id"
  end

  create_table "the_mundane_moves", force: :cascade do |t|
    t.bigint "the_mundane_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_mundane_id"], name: "index_the_mundane_moves_on_the_mundane_id"
  end

  create_table "the_mundanes", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_mundanes_on_character_sheet_id"
  end

  create_table "the_professional_moves", force: :cascade do |t|
    t.bigint "the_professional_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_professional_id"], name: "index_the_professional_moves_on_the_professional_id"
  end

  create_table "the_professionals", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.bigint "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_the_professionals_on_agency_id"
    t.index ["character_sheet_id"], name: "index_the_professionals_on_character_sheet_id"
  end

  create_table "the_spell_slinger_moves", force: :cascade do |t|
    t.bigint "the_spell_slinger_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_spell_slinger_id"], name: "index_the_spell_slinger_moves_on_the_spell_slinger_id"
  end

  create_table "the_spell_slingers", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.bigint "combat_magic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_spell_slingers_on_character_sheet_id"
    t.index ["combat_magic_id"], name: "index_the_spell_slingers_on_combat_magic_id"
  end

  create_table "the_spookies", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "dark_side"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_spookies_on_character_sheet_id"
  end

  create_table "the_spooky_moves", force: :cascade do |t|
    t.bigint "the_spooky_id"
    t.string "name"
    t.string "description"
    t.string "stat"
    t.integer "modifier"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["the_spooky_id"], name: "index_the_spooky_moves_on_the_spooky_id"
  end

  create_table "the_wronged_moves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "the_wrongeds", force: :cascade do |t|
    t.bigint "character_sheet_id"
    t.string "lost"
    t.string "prey"
    t.string "failed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_sheet_id"], name: "index_the_wrongeds_on_character_sheet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.bigint "inventory_id"
    t.string "name"
    t.string "description"
    t.integer "harm"
    t.string "string"
    t.string "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_weapons_on_inventory_id"
  end

end
