require 'faker'

15.times do
  Superhero.create!(name: Faker::Superhero.name, power: Faker::Superhero.power)
end