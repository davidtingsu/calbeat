# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def create_club_with_category(club_name, category_name)
  club = Club.find_or_create_by_name :name => club_name, :school_id => 1
  category = Category.find_or_create_by_name :name => category_name
  club.categories << category
  club
end

School.find_or_create_by_name :name => "UC Berkeley"

clubs = [["Berkeley Project", "Volunteer"], ["Hackers at Berkeley", "Academics"], ["CSUA", "Academics"]].map {
  |club_name, category_name| create_club_with_category(club_name, category_name)
}

clubs[1].related_club_ids = clubs[2].id
clubs[2].related_club_ids = clubs[1].id

clubs[1].save!
clubs[2].save!
