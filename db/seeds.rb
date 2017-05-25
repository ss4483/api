# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create
user_2 = User.create

celeb_1 = Celebrity.create
celeb_2 = Celebrity.create
celeb_3 = Celebrity.create

user_1.celebrity << celeb_1
user_1.celebrity << celeb_2
user_2.celebrity << celeb_1
user_2.celebrity << celeb_3

image_1 = CelebrityImage.create(celebrity_id: 1)
image_2 = CelebrityImage.create(celebrity_id: 1)
image_3 = CelebrityImage.create(celebrity_id: 2)
image_4 = CelebrityImage.create(celebrity_id: 3)
image_5 = CelebrityImage.create(celebrity_id: 3)
image_6 = CelebrityImage.create(celebrity_id: 3)
