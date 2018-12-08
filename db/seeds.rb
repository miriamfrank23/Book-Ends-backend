# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'start seeding'


def add_books()
  index =
  while index <=
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
NATSUO+KIRINO&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by_title(book['items'][0]['volumeInfo']['title']).nil?
        Book.create(title: book['items'][0]['volumeInfo']['title'],
        description: book['items'][0]['volumeInfo']['description'],
        average_rating: book['items'][0]['volumeInfo']['averageRating'],
        number_of_ratings: book['items'][0]['volumeInfo']['ratingsCount'],
        thumbnail: book['items'][0]['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['items'][0]['volumeInfo']['publishedDate'],
        publisher: book['items'][0]['volumeInfo']['publisher'],
        subtitle: book['items'][0]['volumeInfo']['subtitle'],
        page_count: book['items'][0]['volumeInfo']['pageCount'],
        authors:
        book['items'][0]['volumeInfo']['authors']
        )
        p book['items'][0]['volumeInfo']['title']
        p book['items'][0]['volumeInfo']['ratingsCount']
    end
    index += 1
  end
end

add_books()


p 'end seeding'
