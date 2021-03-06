# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create!(team_name: "User1's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [1, 17], captain_id: 17)
Team.create!(team_name: "User2's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [2, 18], captain_id: 2)
Team.create!(team_name: "User3's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [3], captain_id: 3)
Team.create!(team_name: "User4's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [4], captain_id: 4)
Team.create!(team_name: "User5's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [5], captain_id: 5)
Team.create!(team_name: "User6's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [6], captain_id: 6)
Team.create!(team_name: "User7's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [7], captain_id: 7)
Team.create!(team_name: "User8's Van Team", team_message: "Test", league: "Vancouver", status: "approved", players_id: [8], captain_id: 8)
Team.create!(team_name: "User9's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [9], captain_id: 9)
Team.create!(team_name: "User10's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [10], captain_id: 10)
Team.create!(team_name: "User11's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [11], captain_id: 11)
Team.create!(team_name: "User12's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [12], captain_id: 12)
Team.create!(team_name: "User13's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [13], captain_id: 13)
Team.create!(team_name: "User14's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [14], captain_id: 14)
Team.create!(team_name: "User15's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [15], captain_id: 15)
Team.create!(team_name: "User16's Van Team", team_message: "Test", league: "Surrey", status: "pending", players_id: [16], captain_id: 16)


User.create(username: "user1", email: "user1@example.com", password: "useruser1", password_confirmation: "useruser1", team_id: 1, primary_court: "Bear Creek Park", secondary_court: "Garden Park")
User.create(username: "user2", email: "user2@example.com", password: "useruser2", password_confirmation: "useruser2", team_id: 2)
User.create(username: "user3", email: "user3@example.com", password: "useruser3", password_confirmation: "useruser3", team_id: 3)
User.create(username: "user4", email: "user4@example.com", password: "useruser4", password_confirmation: "useruser4", team_id: 4)
User.create(username: "user5", email: "user5@example.com", password: "useruser5", password_confirmation: "useruser5", team_id: 5)
User.create(username: "user6", email: "user6@example.com", password: "useruser6", password_confirmation: "useruser6", team_id: 6)
User.create(username: "user7", email: "user7@example.com", password: "useruser7", password_confirmation: "useruser7", team_id: 7)
User.create(username: "user8", email: "user8@example.com", password: "useruser8", password_confirmation: "useruser8", team_id: 8)
User.create(username: "user9", email: "user9@example.com", password: "useruser9", password_confirmation: "useruser9", team_id: 9)
User.create(username: "user10", email: "user10@example.com", password: "useruser10", password_confirmation: "useruser10", team_id: 10)
User.create(username: "user11", email: "user11@example.com", password: "useruser11", password_confirmation: "useruser11", team_id: 11)
User.create(username: "user12", email: "user12@example.com", password: "useruser12", password_confirmation: "useruser12", team_id: 12)
User.create(username: "user13", email: "user13@example.com", password: "useruser13", password_confirmation: "useruser13", team_id: 13)
User.create(username: "user14", email: "user14@example.com", password: "useruser14", password_confirmation: "useruser14", team_id: 14)
User.create(username: "user15", email: "user15@example.com", password: "useruser15", password_confirmation: "useruser15", team_id: 15)
User.create(username: "user16", email: "user16@example.com", password: "useruser16", password_confirmation: "useruser16", team_id: 16)
User.create(username: "admin", email: "admin@xyz.com", password: "notadmin", password_confirmation: "notadmin", team_id: 1, admin: true, super_admin: true) #id = 17
User.create(username: "user18", email: "user18@example.com", password: "useruser18", password_confirmation: "useruser18", team_id: 2)

League.create(name: "Vancouver")
League.create(name: "Surrey")
League.create(name: "Richmond")

Map.create(name: "David Lam Park", info: "David Lam Park", lat: 49.272342, lng: -123.124583, league: 0)
Map.create(name: "Sutcliffe Park", info: "Sutcliffe Park", lat: 49.268989, lng: -123.134834, league: 0)
Map.create(name: "Garden Park", info: "Garden Park", lat: 49.268189, lng: -123.058892, league: 0)
Map.create(name: "Oak Park", info: "Oak Park", lat: 49.215607, lng: -123.129056, league: 0)
Map.create(name: "Queen Elizabeth Park", info: "Queen Elizabeth Park", lat: 49.241436, lng: -123.113533, league: 0)

Map.create(name: "Garden City Park", info: "Garden City Park", lat: 49.165445, lng: -123.122790, league: 1)
Map.create(name: "Hugh Boyd Community Park", info: "Hugh Boyd Community Park", lat: 49.146022, lng: -123.177731, league: 1)
Map.create(name: "King George Community Park", info: "King George Community Park", lat: 49.183425, lng: -123.087645, league: 1)
Map.create(name: "South Arm Courts", info: "South Arm Courts", lat: 49.140251, lng: -123.127766, league: 1)
Map.create(name: "Thompson Courts", info: "Thompson Courts", lat: 49.163260, lng: -123.165560, league: 1)

Map.create(name: "Bear Creek Park", info: "Bear Creek Park", lat: 49.160802, lng: -122.840934, league: 2)
Map.create(name: "Bob Rutledge Court", info: "Bob Rutledge Court", lat: 49.100803, lng: -122.810683, league: 2)
Map.create(name: "Fleetwood Park", info: "Fleetwood Park", lat: 49.146280, lng: -122.789638, league: 2)
Map.create(name: "Goldstone Park", info: "Goldstone Park", lat: 49.109196, lng: -122.817557, league: 2)
Map.create(name: "Tom Binnie Park", info: "Tom Binnie Park", lat: 49.196142, lng: -122.849728, league: 2)
