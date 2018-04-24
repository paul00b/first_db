# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

		nb = 0
		10.times do
				user = User.create(name: Faker::Name.name)
				post = Post.new
				post.user_id = user.id
				post.name = Faker::Lorem.sentence
				post.body = Faker::Lorem.sentence(5)
				post.description = Faker::Lorem.sentence(3)
				post.save
				nb += 1
			end
			puts "#{nb} utilisateurs et posts on été créés"
