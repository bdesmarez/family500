# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

100.times do
  Company.create(name: Faker::Lorem.sentence(4),
                description: Faker::Lorem.sentence(12, true, 10)
               )
end
