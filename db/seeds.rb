# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
User.destroy_all

5.times do
	team_name = Faker::Team.name
	team_sport = Faker::Team.sport 
	team = Team.create(name: team_name, sport: team_sport)

	5.times do
		user_name = Faker::Name.name
		User.create(name: user_name, team: team)
	end
end
