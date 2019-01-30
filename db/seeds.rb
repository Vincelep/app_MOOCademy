# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#Cour.destroy_all
#Lesson.destroy_all

10.times do 
  cour = Cour.create!(title: Faker::Space.planet, description: Faker::Space.moon)  
end

20.times do
  lesson = Lesson.create!(title: Faker::Space.agency_abv, body: Faker::Space.agency, cour_id: (rand(Cour.first.id..Cour.last.id)))
end 