# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_fields = ["email", "encrypted_password", "username"]
item_fields = ["title", "description", "user_id"]
comment_fields = ["body", "user_id", "item_id"]

(1...100).each do |i|
    user = User.create(
        "email": "user#{i}@address.com",
        "username": "user#{i}",
        "password": "123456"
    )
    user.save
    item = Item.create(
        "title": "item#{i}",
        "description": "this is a description for item #{i}",
        "user_id": i
    )
    item.save
    comment = Comment.create(
        "body": "commend number #{i}",
        "user_id": i,
        "item_id": i
    )
    comment.save
end




