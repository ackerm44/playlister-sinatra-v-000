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

ActiveRecord::Schema.define(version: 20171214141909) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "genres_songs", id: false, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "song_id"
  end

  add_index "genres_songs", ["genre_id"], name: "index_genres_songs_on_genre_id"
  add_index "genres_songs", ["song_id"], name: "index_genres_songs_on_song_id"

  create_table "song_genres", force: :cascade do |t|
    t.integer "song_id"
    t.integer "genre_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string  "name"
    t.integer "artist_id"
  end

  create_table "songs_genres", id: false, force: :cascade do |t|
    t.integer "song_id"
    t.integer "genre_id"
  end

  add_index "songs_genres", ["genre_id"], name: "index_songs_genres_on_genre_id"
  add_index "songs_genres", ["song_id"], name: "index_songs_genres_on_song_id"

end
