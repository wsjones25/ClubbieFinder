# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.create!(club_name: "Tring Cricket Club", sport: "Cricket", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "Harpenden Rugby Club", sport: "Rugby", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "UCS Old Boys RFC", sport: "Rugby", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "active")
Club.create!(club_name: "Wimbledon Running Club", sport: "Running", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "inactive")
Club.create!(club_name: "St Albans Squash Club", sport: "Squash", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "active")
Club.create!(club_name: "Hemel Rangers", sport: "Football", club_role: "Chairman", main_image: "http://placehold.it/350x200", address: "1 Garden Close", active_status: "inactive")

puts "6 clubs created"

Pro.create!(date_of_birth: Date.parse('1990-03-26'), nationality: "British", require_visa: false, role: "Player", sport: "Cricket")
Pro.create!(date_of_birth: Date.parse('1987-01-11'), nationality: "Austrlian", require_visa: true, role: "Player / Coach", sport: "Rugby")

puts "2 pros created"

Campaign.create!(recruit_type: "Elite player & coach", ideal_start_date: Date.parse('2019-01-11'), job_description: "Require a player to lead the Men's 1st XI both on and off the field as well as be a key member of the entire club coaching setup", compensation: "Competitive", passport_requirements: "British national", club_id: Club.last.id)
Campaign.create!(recruit_type: "Volunteer", ideal_start_date: Date.parse('2019-02-25'), job_description: "Require volunteers to help with junior coaching on a sunday", compensation: "None", passport_requirements: "British national", club_id: Club.last.id)
Campaign.create!(recruit_type: "Coach", ideal_start_date: Date.parse('2019-01-20'), job_description: "Experienced coach required to lead the coaching of the Mens teams", compensation: "Competitive", passport_requirements: "British national", club_id: Club.last.id)

puts "3 campaigns created"

Team.create!(name: "Men\'s 1st XI", club_id: Club.first.id)
Team.create!(name: "Men\'s 2nd XI", club_id: Club.first.id)
Team.create!(name: "U16 Boys", club_id: Club.first.id)
Team.create!(name: "Men\'s 1st XI", club_id: Club.last.id)
Team.create!(name: "Men\'s 2nd XI", club_id: Club.last.id)
Team.create!(name: "Women\'s 1st XI", club_id: Club.last.id)
Team.create!(name: "Women\'s 2nd XI", club_id: Club.last.id)

puts "7 teams created"

Person.create!(first_name: "Simon", last_name: "Shearman", position: "Chairman", email: "simon.shearman@gmail.com", club_id: Club.first.id)
Person.create!(first_name: "Michael", last_name: "Harper", position: "Head of Youth", email: "michael.harper@gmail.com", club_id: Club.first.id)
Person.create!(first_name: "George", last_name: "Lowe", position: "Chairman", email: "george.lowe@gmail.com", club_id: Club.last.id)
Person.create!(first_name: "Peter", last_name: "Wreghitt", position: "1st XI Captain", email: "peter.wreghitt@gmail.com", club_id: Club.last.id)

puts "4 people created"






