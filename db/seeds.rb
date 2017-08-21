30.times do
  Book.create!(name: Faker::Book.title,
               description: Faker::Lorem.paragraph)
end