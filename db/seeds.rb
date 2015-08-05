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
third_user = User.create! email: "ericadu@sportz.com", password: "password", password_confirmation: "password"
fourth_user = User.create! email: "elderhan@umich.edu", password: "capetown", password_confirmation: "capetown"

Job.create! title:"Crib Building", description:"Need help with building a crib for upcoming twins!", qualifications:"Strong and Patient", pay: 700, contact:"lucaspettinato@gmail.com / 9234567654", date_published:"08/03/2015", user_id: first_user.id, accepted: true
Job.create! title:"Stacking firewood", description:"A few hours worth of stacking lumber for the winter", qualifications:"Able to lift up to 30 lbs", pay: 500, contact:"ian@ianisawesome.com / 2384756456", date_published:"08/02/2015", user_id: second_user.id, accepted: false
Job.create! title:"Cleaning gutters", description:"Need assistance in cleaning mud out of gutters", qualifications:"3 hours of time available", pay: 400, contact:"ericadu@sportz.com / 2439872349", date_published:"08/04/2015", user_id: third_user.id, accepted: false
Job.create! title:"Suit Tailoring", description: "Need a new suit tailored quickly", qualifications: "Demonstrated experience in tailoring", pay: 800, contact: "elderhan@umich.edu/ 2309840983", date_published: "8/05/2015", user_id: fourth_user.id, accepted: true
Job.create! title:"Sink needs fixing", description: "Need to fix sink plumbing", qualifications: "Experience with fixing utilities", pay: 300, contact: "ian@ianisawesome.com / 2384756456", date_published: "8/05/2015", user_id: second_user.id, accepted: false
Job.create! title:"Need painting for friend", description: "Need a piece of art made quickly", qualifications: "Demonstrated portfolio", pay: 600, contact: "lucaspettinato@gmail.com / 9234567654", date_published: "8/05/2015", user_id: first_user.id, accepted: false
Job.create! title:"Need an event catered", description: "Need a meal for 10 cooked quickly", qualifications: "Catering experience", pay: 700, contact: "elderhan@umich.edu / 2309840983", date_published: "8/05/2015", user_id: fourth_user.id, accepted: false
Job.create! title:"House cleaning", description: "Need floors swept quickly", qualifications: "None", pay: 200, contact: "ericadu@sportz.com / 2439872349", date_published: "8/05/2015", user_id: third_user.id, accepted: true
Job.create! title:"Help Building a Shelf", description: "I need someone to help me build a shelf in my living room", qualifications: "Strong and, preferebly, tall", pay: 500, contact: "ericadu@sportz.com / 2439872349", date_published: "8/05/2015", user_id: third_user.id, accepted: false
