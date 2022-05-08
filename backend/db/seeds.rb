# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

'''
create_table "items", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "description"
    t.string "image"
    t.integer "favorites_count"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_items_on_slug", unique: true
    t.index ["user_id"], name: "index_items_on_user_id"
  end
  '''

  items_to_load = Item.create([{title: "item1", slug: "item-1", description: "This is the description of the item", image: "", user_id: "1"}])

'''
  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "image"
    t.text "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end
  '''

  users = User.create([{email: "email1@example.com", username: "user0", bio: "placeholder bio for user 1", password: "12345678"}])

  usersLoop = (1..100).each do |i|
    User.create(email: "email_%i@example.com" % i, username: "user%i"%i, bio: "placeholder bio for user%i" %i, password: "123456789" )
  end

