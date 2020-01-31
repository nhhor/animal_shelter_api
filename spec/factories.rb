FactoryBot.define do

  factory :animal, class: Animal do
    name { Faker::Creature::Cat.unique.name }
    animal_type { "Cat" }
    breed { Faker::Creature::Cat.breed }
    sex { Faker::Creature::Dog.gender }
    color { Faker::Color.color_name }
    birthday { Faker::Date.birthday(min_age: 0, max_age: 9) }
    notes { Faker::Coffee.notes }
  end

end
