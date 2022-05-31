require 'faker'

user = User.create(email: "teste@gmail.com", password: "123123")

40.times do
  author = Faker::Book.author
  title = Faker::Book.title
  description = "Summit Lake, uma pequena cidade entre montanhas,
  é esse tipo de lugar, bucólico e com encantadoras casas
  dispostas à beira de um longo trecho de água intocada. Duas semanas atrás, a estudante de direito Becca Eckersley foi
  brutalmente assassinada em uma dessas casas."
  # description = Faker::Movie.quote
  category = Faker::Book.genre
  price = rand(20..40)

  Book.create!(user: user, author: author, title: title, description: description, category: category, price: price)
end
