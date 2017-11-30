require 'faker'

5.times do |i|
Entry.create(title: Faker::Book.title, author: Faker::Book.author, body: Faker::ChuckNorris.fact)
end
