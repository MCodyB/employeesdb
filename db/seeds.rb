# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


4.times do
  Profile.create({:height => 6, :fav_food => "some food", :fav_day => "Monday", :birthday => Date.today - 3.years , :salary => rand(100000), :photo_url => "http://site.com"})
end

Employee.create([{name: "TheBoss", profile_id: 1},{name: "Sup1", profile_id: 2, supervisor_id: 1},{name: "Sub2", profile_id: 3, supervisor_id: 2},{name: "Sub1", profile_id: 4, supervisor_id: 2}])

Team.create([{name:"Team1", team_leader_id: 1},{name:"Team2", team_leader_id: 2}])