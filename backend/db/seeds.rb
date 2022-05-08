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