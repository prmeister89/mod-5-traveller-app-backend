# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Date format DD-MM-YYYY
#.strftime("%b-%d-%Y")
trip1 = Trip.create(
  location: "Sydney, Australia",
  startDate: "10-10-2018",
  endDate: "26-10-2018",
  notes: "Try the coconut shrimp!"
)
trip2 = Trip.create(
  location: "Chiang Mai, Thailand",
  startDate: "10-09-2018",
  endDate: "18-09-2018",
  notes: "Go to the Old City street market!"
)
