# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'start seeding'


def add_tana_french_books()
  index = 0
  while index <= 10
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
tana+french&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['items'][0]['volumeInfo']['title']).nil?
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

def add_robert_galbraith_books()
  index = 0
  while index <= 10
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
robert+galbraith&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['items'][0]['volumeInfo']['title']).nil?
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

def add_gillian_flynn_books()
  index = 0
  while index <= 10
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
gillian+flynn&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['items'][0]['volumeInfo']['title']).nil?
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

def add_agatha_christie_books()
  index = 0
  while index <= 20
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
agatha+christie&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['items'][0]['volumeInfo']['title']).nil?
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

def add_sherlock_holmes_books()
  index = 0
  while index <= 20
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=inauthor:
arthur+conan+doyle&maxResults=1&langRestrict=en&startIndex=#{index}&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
      # byebug
      if book['items'][0]['volumeInfo']['title'] && book['items'][0]['volumeInfo']['description'] && book['items'][0]['volumeInfo']['ratingsCount'] && book['items'][0]['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['items'][0]['volumeInfo']['title']).nil?
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

add_tana_french_books()
add_agatha_christie_books()
add_robert_galbraith_books()
add_gillian_flynn_books()
add_sherlock_holmes_books()

Book.find_by(title: 'An Autobiography').destroy
Book.find_by(title: 'Black Coffee').destroy
Book.find_by(title: 'The Grownup').destroy
Book.find_by(title: 'Dark Places - Gillian Flynn').destroy
Book.find_by(title: 'The Silkworm (two-chapter extract)').destroy
Book.find_by(title: 'Witness for the Prosecution').destroy
Book.find_by(title: 'Sir Arthur Conan Doyle').destroy
Book.find_by(title: 'Arthur Conan Doyle').destroy




p 'end seeding'
