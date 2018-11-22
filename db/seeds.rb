# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'start seeding'

User.create(first_name: 'charlie', last_name: 'russo', email: 'hi@hi.com', password: 'charlie123')

User.create(first_name: 'ruth', last_name: 'pelham', email: 'hi@hi.com', password: 'ruth123')

Book.create(title: 'the book', description: 'a mystery book', average_rating: 4.5, number_of_ratings: 100, authors: 'jordan farkas')

Comment.create(book_id: 1, user_id: 1, text: 'jordan farkas is cool')

p 'end seeding'
