# Génération de 10 utiliser via la gem faker
require 'faker'

		nb = 0 #Incrémentateur pour le put.
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
