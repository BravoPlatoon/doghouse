# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dog_breeds = [
  :golden_retriever,
  :beagle,
  :rhodesian_ridgeback,
  :poodle,
  :chow_chow,
  :shiba_inu,
  :cockapoo,
  :english_pointer,
  :australian_sheepdog,
  :husky
]

100.times do
  o = Owner.create!({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address
  })

  [1, 2, 3].sample.times do
    Dog.create!({
      owner: o,
      name: Faker::Cat.name,
      breed: dog_breeds.sample
    })
  end
end
