# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


School.find_or_create_by_name :name => "UC Berkeley"

[["Berkeley Project", "Volunteer"], ["Hackers at Berkeley", "Academics"]].each do |club_name, category_name|
  club = Club.find_or_create_by_name :name => club_name, :school_id => 1
  category = Category.find_or_create_by_name :name => category_name
  club.categories << category
end

