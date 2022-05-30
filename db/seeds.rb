require 'faker'

10.times do
  author = Faker::Book.author
  title = Faker::Book.title
  description = Faker::Movie.quote
  category = Faker::Book.genre
  price = rand(20..40)

  Book.create!(user_id: 1, author: author, title: title, description: description, category: category, price: price)
end
