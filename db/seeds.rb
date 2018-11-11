# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.create!(club_name: "Tring Cricket Club", sport: "Cricket", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "Harpenden Rugby Club", sport: "Rugby", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "UCS Old Boys RFC", sport: "Rugby", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "active")
Club.create!(club_name: "Wimbledon Running Club", sport: "Running", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "St Albans Squash Club", sport: "Squash", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "active")
Club.create!(club_name: "Hemel Rangers", sport: "Football", club_role: "Chairman", main_image: "http://placehold.it/300x200", address: "1 Garden Close", active_status: "inactive")

puts "6 clubs created"

Pro.create!(
	date_of_birth: Date.parse('1990-03-26'), 
	nationality: "British",
	require_visa: false,
	role: "Player",
	sport: "Cricket"
)

Pro.create!(
	date_of_birth: Date.parse('1987-01-11'), 
	nationality: "Austrlian",
	require_visa: true,
	role: "Player / Coach",
	sport: "Rugby"
)

puts "2 pros created"