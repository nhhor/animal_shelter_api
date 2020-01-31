# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    Animal.destroy_all
    15.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Cat.unique.name,
        animal_type: "Cat",
        breed: Faker::Creature::Cat.breed,
        sex: Faker::Creature::Dog.gender,
        color: Faker::Color.color_name,
        birthday: Faker::Date.birthday(min_age: 0, max_age: 9),
        notes: Faker::Coffee.notes
      )
      puts "Seed added #{i}: #{animal.animal_type} named '#{animal.name}' with random Faker details."
    end

    15.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Dog.unique.name,
        animal_type: "Dog",
        breed: Faker::Creature::Dog.breed,
        sex: Faker::Creature::Dog.gender,
        color: Faker::Color.color_name,
        birthday: Faker::Date.birthday(min_age: 0, max_age: 9),
        notes: Faker::Coffee.notes
      )
      puts "Seed added #{i}: #{animal.animal_type} named '#{animal.name}' with random Faker details."
    end

  end
end

Seed.begin
