# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Job.delete_all
Application.delete_all

puts "Creating Users and Jobs..."

first_user = User.create! email: "lucaspettinato@gmail.com", password: "password", password_confirmation: "password"
second_user = User.create! email: "ian@gmail.com", password: "password", password_confirmation: "password"
third_user = User.create! email: "ericadu@gmail.com", password: "password", password_confirmation: "password"
fourth_user = User.create! email: "elderhan@gmail.com", password: "capetown", password_confirmation: "capetown"

Job.create! title:"Crib Building", description:"Need help with building a crib for upcoming twins!", qualifications:"Woodworking skill and dedication", pay: 700, contact:"lucaspettinato@gmail.com / 9234567654", date_published:"8/03/2015", user_id: first_user.id, accepted: true
Job.create! title:"Need Painting for Friend", description: "Need a piece of art made quickly", qualifications: "Demonstrated portfolio", pay: 500, contact: "lucaspettinato@gmail.com / 9234567654", date_published: "7/21/2015", user_id: first_user.id, accepted: false
Job.create! title:"Move Out Help", description: "Need help moving furniture", qualifications: "Able to lift above 30 lbs", pay: 300, contact: "lucaspettinato@gmail.com / 9234567654", date_published: "6/28/2015", user_id: first_user.id, accepted: false
Job.create! title:"Yard cleaning", description: "Need help clearing storm debris from yard", qualifications: "Outgoing", pay: 200, contact: "lucaspettinato@gmail.com / 9234567654", date_published: "8/01/2015", user_id: first_user.id, accepted: false
Job.create! title:"Fixing Broken Door", description: "Need help repairing the hinge on a shed door", qualifications: "Experience with woodworking and carpentry", pay: 700, contact: "lucaspettinato@gmail.com / 9234567654", date_published: "7/28/2015", user_id: first_user.id, accepted: true

Job.create! title:"Stacking Firewood", description:"A few hours worth of stacking lumber for the winter", qualifications:"Able to lift up to 30 lbs", pay: 500, contact:"ian@gmail.com / 2384756456", date_published:"8/02/2015", user_id: second_user.id, accepted: false
Job.create! title:"Sink Needs Fixing", description: "Need to fix sink plumbing", qualifications: "Experience with fixing utilities", pay: 300, contact: "ian@gmail.com / 2384756456", date_published: "8/03/2015", user_id: second_user.id, accepted: false
Job.create! title:"Painting fence", description: "Need assistance painting fence around community center", qualifications: "Outgoing and willing to work", pay: 400, contact: "ian@gmail.com / 2384756456", date_published: "7/26/2015", user_id: second_user.id, accepted: false
Job.create! title:"Food transportation", description: "Need help transporting food for community event", qualifications: "Able to lift 10-20 lbs", pay: 200, contact: "ian@gmail.com / 2384756456", date_published: "8/01/2015", user_id: second_user.id, accepted: true
Job.create! title:"Photography for Art Gallery", description: "Need someone to take photos for art presentation", qualifications: "Experience with photography, portfolio", pay: 800, contact: "ian@gmail.com / 2384756456", date_published: "8/04/2015", user_id: second_user.id, accepted: true

Job.create! title:"Cleaning Gutters", description:"Need assistance in cleaning mud out of gutters", qualifications:"3 hours of time available", pay: 400, contact:"ericadu@gmail.com / 2439872349", date_published:"8/04/2015", user_id: third_user.id, accepted: false
sample_job = Job.create! title:"Help Building a Shelf", description: "I need someone to help me build a shelf in my living room", qualifications: "Carpentry skills", pay: 500, contact: "ericadu@gmail.com / 2439872349", date_published: "8/06/2015", user_id: third_user.id, accepted: false
Job.create! title:"House Cleaning", description: "Need floors swept quickly", qualifications: "None", pay: 200, contact: "ericadu@gmail.com / 2439872349", date_published: "8/05/2015", user_id: third_user.id, accepted: true
Job.create! title:"Need files organized", description: "Help with organizing records in alphabetical order", qualifications: "Patience", pay: 600, contact: "ericadu@gmail.com / 2439872349", date_published: "8/05/2015", user_id: third_user.id, accepted: true
Job.create! title:"Need resume reviewed", description: "Need someone to critique my resume", qualifications: "Experience in the workforce/recruiting", pay: 800, contact: "ericadu@gmail.com / 2439872349", date_published: "7/25/2015", user_id: third_user.id, accepted: false

Job.create! title:"Suit Tailoring", description: "Need a new suit tailored quickly", qualifications: "Demonstrated experience in tailoring", pay: 800, contact: "elderhan@gmail.com/2309840983", date_published: "8/05/2015", user_id: fourth_user.id, accepted: true
Job.create! title:"Tour Guide at Community Center", description: "Need someone familiar with the community center to give tour", qualifications:"Outgoing", pay:400, contact:"elderhan@gmail.com/2309840983", date_published: "7/31/2015", user_id: fourth_user.id, accepted: true
Job.create! title:"Need an Event Catered", description: "Need a meal for 10 cooked quickly", qualifications: "Catering experience", pay: 700, contact: "elderhan@gmail.com/2309840983", date_published: "8/05/2015", user_id: fourth_user.id, accepted: false
Job.create! title:"Painting garage", description: "Need someone assist with painting garage", qualifications: "None", pay: 300, contact: "elderhan@gmail.com/2309840983", date_published: "7/20/2015", user_id: fourth_user.id, accepted: false
Job.create! title:"Building shed", description: "Need someone to assist with building a shed for equipment", qualifications:"Experience in carpentry",pay: 800, contact: "elderhan@gmail.com/2309840983", date_published: "7/24/2015", user_id: fourth_user.id, accepted: false

Application.create! name: "Ian Schoonover", contact: "ian@gmail.com/2439872349", address: "Cape Town", skills: "Carpentry", past_experiences: "Fixes utilities", summary: "Always willing to work and help out", user_id: second_user.id, job_id: sample_job.id