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

ActiveRecord::Schema.define(:version => 20110522074511) do

  create_table "games", :force => true do |t|
    t.datetime "starts_at"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.string   "venue"
    t.string   "mlb_gameid"
    t.integer  "inning_state"
    t.string   "league"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "in_progress"
  end

  create_table "player_game_stat_estimates", :force => true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.float    "avg"
    t.integer  "hr"
    t.integer  "rbi"
    t.float    "era"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "number"
    t.string   "position"
    t.integer  "mlb_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["mlb_id"], :name => "index_players_on_mlb_id"

  create_table "team_player_stats", :force => true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.string   "position"
    t.string   "rl"
    t.string   "status"
    t.float    "avg"
    t.integer  "hr"
    t.integer  "rbi"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "era"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "league"
    t.string   "division"
    t.string   "manager"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "founded"
    t.string   "mascot"
    t.string   "ballpark"
    t.string   "logo_url"
    t.string   "mlb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["mlb_id"], :name => "index_teams_on_mlb_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
