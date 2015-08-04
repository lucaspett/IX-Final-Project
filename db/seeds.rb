# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Job.delete_all

puts "Creating Users and Jobs..."

first_user = User.create! email: "lucaspettinato@gmail.com", password: "password", password_confirmation: "password"
second_user = User.create! email: "ian@ianisawesome.com", password: "password", password_confirmation: "password"
third_user = User.create! email: "ericaduinyamom@sportz.com", password: "password", password_confirmation: "password"

Job.create! title:"Crib Building", description:"I need someone to help me build a crib... I have octuplets on the way!", qualifications:"Strong and Patient", pay: 500, contact:"lucaspettinato@gmail.com / 9234567654", date_published:"08/03/2015", user_id: first_user.id, accepted: false
Job.create! title:"Help! I've fallen and I can't get up", description:"I fell, someone pick me back up", qualifications:"Strong and Willing To Participate in This Useless Job", pay: 10, contact:"ian@ianisawesome.com", date_published:"08/02/2015", user_id: second_user.id, accepted: false
Job.create! title:"Sportz", description:"Play sportz w/ me", qualifications:"Athletic Bod", pay: 50, contact:"ericaduinyamom@sportz.com", date_published:"08/04/2015", user_id: third_user.id, accepted: false