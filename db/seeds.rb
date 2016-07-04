# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create!(team_name: "User1's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [1], captain_id: 1)
Team.create!(team_name: "User2's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [2], captain_id: 2)
Team.create!(team_name: "User3's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [3], captain_id: 3)
Team.create!(team_name: "User4's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [4], captain_id: 4)
Team.create!(team_name: "User5's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [5], captain_id: 5)
Team.create!(team_name: "User6's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [6], captain_id: 6)
Team.create!(team_name: "User7's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [7], captain_id: 7)
Team.create!(team_name: "User8's Gold Team", team_message: "Test", league: "Gold", status: "approved", players_id: [8], captain_id: 8)
User.create(name: "user1", email: "user1@example.com", password: "useruser1", password_confirmation: "useruser1", team_id: 1)
User.create(name: "user2", email: "user2@example.com", password: "useruser2", password_confirmation: "useruser2")
User.create(name: "user3", email: "user3@example.com", password: "useruser3", password_confirmation: "useruser3")
User.create(name: "user4", email: "user4@example.com", password: "useruser4", password_confirmation: "useruser4")
User.create(name: "user5", email: "user5@example.com", password: "useruser5", password_confirmation: "useruser5")
User.create(name: "user6", email: "user6@example.com", password: "useruser6", password_confirmation: "useruser6")
User.create(name: "user7", email: "user7@example.com", password: "useruser7", password_confirmation: "useruser7")
User.create(name: "user8", email: "user8@example.com", password: "useruser8", password_confirmation: "useruser8")
User.create(name: "user9", email: "user9@example.com", password: "useruser9", password_confirmation: "useruser9")
User.create(name: "daAdmin", email: "admin@xyz.com", password: "notadmin", password_confirmation: "notadmin", admin: true, super_admin: true)
League.create(name: "Gold")
League.create(name: "Silver")
League.create(name: "Bronze")
