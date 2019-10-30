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

ActiveRecord::Schema.define(version: 2019_10_24_074732) do

  create_table "bookings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pnr"
    t.float "total_fare"
    t.string "passenger_name"
    t.string "email"
    t.string "origin"
    t.string "destination"
    t.integer "passenger_age"
    t.date "travel_date"
    t.date "issue_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "reservation_id"
    t.bigint "route_id"
    t.index ["reservation_id"], name: "index_bookings_on_reservation_id"
    t.index ["route_id"], name: "index_bookings_on_route_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "travel_date"
    t.integer "number_of_seats"
    t.string "origin"
    t.string "destination"
    t.time "departure_time"
    t.time "arrival_time"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "route_id"
    t.index ["route_id"], name: "index_reservations_on_route_id"
  end

  create_table "routes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "route_name"
    t.string "service_number"
    t.string "origin"
    t.string "destination"
    t.integer "number_of_seats"
    t.time "departure_time"
    t.time "arrival_time"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "utf8_general_ci", force: :cascade do |t|
    t.string "seat_number"
    t.string "pnr_number"
    t.string "passenger_name"
    t.string "email"
    t.integer "age"
    t.float "base_fare"
    t.float "gst"
    t.float "cancelled_fare"
    t.boolean "is_cancelled", default: false
    t.float "net_fare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_id"
    t.bigint "reservation_id"
    t.bigint "user_id"
    t.date "travel_date"
    t.date "issue_date"
    t.float "refund_amount"
    t.index ["booking_id"], name: "index_tickets_on_booking_id"
    t.index ["reservation_id"], name: "index_tickets_on_reservation_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "reservations"
  add_foreign_key "bookings", "routes"
  add_foreign_key "bookings", "users"
  add_foreign_key "reservations", "routes"
  add_foreign_key "tickets", "bookings"
  add_foreign_key "tickets", "reservations"
  add_foreign_key "tickets", "users"
end
