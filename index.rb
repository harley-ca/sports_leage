require "faker"

require_relative("./team.rb")
require_relative("./league.rb")
require_relative("./team_member.rb")
require_relative("./player.rb")
require_relative("./coach.rb")
require_relative("./staff.rb")

team1_players = []
team2_players = []
team3_players = []

for player in 1..6
    team1_players.push(Player.new(Faker::Fantasy::Tolkien.character, rand(1..500), Faker::Sports::Basketball.position))
    team2_players.push(Player.new(Faker::Fantasy::Tolkien.character, rand(1..500), Faker::Sports::Basketball.position))
    team3_players.push(Player.new(Faker::Fantasy::Tolkien.character, rand(1..500), Faker::Sports::Basketball.position))
end

team1_staff = []
team2_staff = []
team3_staff = []

for staff in 1..3
    team1_staff.push(Staff.new(Faker::Sports::Basketball.player, Faker::JapaneseMedia::Naruto.demon))
    team2_staff.push(Staff.new(Faker::Sports::Basketball.player, Faker::JapaneseMedia::Naruto.demon))
    team3_staff.push(Staff.new(Faker::Sports::Basketball.player, Faker::JapaneseMedia::Naruto.demon))
end

coach1 = Coach.new(Faker::Sports::Basketball.coach)
coach2 = Coach.new(Faker::Sports::Basketball.coach)
coach3 = Coach.new(Faker::Sports::Basketball.coach)


# puts coach1
# puts coach2
# puts coach3


team1 = Team.new("Lions","Brisbane","Gabba","Clothes", team1_players, coach1, team1_staff)
team2 = Team.new("Kittens","Brisbane","Gabba","Clothes",team2_players, coach2, team2_staff)
team3 = Team.new("Cats","Brisbane","Gabba","Clothes",team3_players, coach3, team3_staff)
array_of_teams = [team1, team2, team3]
league = League.new("BML", "multisport", "Brisbane Multisports League", array_of_teams)

# puts league
# puts league.print_teams

tm1 = TeamMember.new("James Door")

# puts tm1
# tm1.train
# tm1.play

p1 = Player.new("Rhiannon Sticks", 1, "Forward")

# puts p1
# p1.play

c1 = Coach.new("Coachface")
s1 = Staff.new("Samuel", "assisstant coach")

# puts s1
# puts c1

puts team1.full_info