# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = Product.create([
  {name: "The Lion, the Witch, and the wardrobe", price_in_cents: 1000, description: "A heartwarming children's novel about orphans, Christianity, and animal cruelty."},
  {name: "Railsea", price_in_cents: 899, description: "A rousing story full of sound and trains and giant moles, and signifying that China Mieville is better off when he doesn't let marxism completely take over his better judgement."},
  {name: "Blender", price_in_cents: 8995, description: "We also sell blenders"},

])

100.times do
  Product.create(
    name: Faker::Company.catch_phrase,
    description: "#{Faker::Company.bs} from #{Faker::Company.name} #{Faker::Company.suffix}",
    price_in_cents: rand(100000)
  )
end

# t.string   "name"
#     t.text     "description"
#     t.integer  "price_in_cents"
#     t.datetime "created_at"
#     t.date  tw  me "updated_at"e