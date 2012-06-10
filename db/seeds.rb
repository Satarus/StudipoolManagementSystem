# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

WorkingPlace.create({:place_nr => 1})
WorkingPlace.create({:place_nr => 2})
WorkingPlace.create({:place_nr => 3})
WorkingPlace.create({:place_nr => 4})
WorkingPlace.create({:place_nr => 5})
WorkingPlace.create({:place_nr => 6})
WorkingPlace.create({:place_nr => 7})
WorkingPlace.create({:place_nr => 8})
WorkingPlace.create({:place_nr => 9})
WorkingPlace.create({:place_nr => 10})
WorkingPlace.create({:place_nr => 11})
WorkingPlace.create({:place_nr => 12})
WorkingPlace.create({:place_nr => 13})
WorkingPlace.create({:place_nr => 14})
WorkingPlace.create({:place_nr => 15})
WorkingPlace.create({:place_nr => 16})
WorkingPlace.create({:place_nr => 17})
WorkingPlace.create({:place_nr => 18})
WorkingPlace.create({:place_nr => 19})
WorkingPlace.create({:place_nr => 20})
WorkingPlace.create({:place_nr => 21})
WorkingPlace.create({:place_nr => 22})
WorkingPlace.create({:place_nr => 23})
WorkingPlace.create({:place_nr => 24})

WorkingPlace.all.each do |place|
  place.create_time_slots
end
