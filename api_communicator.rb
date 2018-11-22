require 'rest-client'
require 'json'
require 'byebug'
require 'uri'



def get_from_movie_api
  movies_array = []

  id = 1
  # byebug
  while id < 10
    t = Time.now
    RestClient.get("https://api.themoviedb.org/3/movie/#{id}?api_key=ca2625db36b5a82984d4a3bd2e70e5d7") { |response, request, result, &block|
    case response.code
    when 200
      movie = JSON.parse(response)
      if movie['vote_count'].to_i > 100
        p movie['title']
        movies_array.push(movie)
      end
    when 404
      p 'missing movie'
    else
      response.return!(request, result, &block)
    end
    }
    id += 1
    sleep(0.1)
  end
  p movies_array
  get_from_book_api(movies_array)
end

def get_from_book_api(movies)
  p 'there are'
  p movies.length
  p 'movies'
  # query google books with existing movie titles?

  movie_and_book = movies.map do |movie|
    movie_for_query = movie['title'].split(' ').join('+')
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{movie_for_query}&maxResults=1&langRestrict=en&key=AIzaSyBYNWrl0SYXUnucBkyzuia9nVTRDDUzdbs")
    book = JSON.parse(response)
    p movie
    p book['items'][0]['volumeInfo']['title']
    movie.merge(book)
  end
  p movie_and_book
  byebug
end

get_from_movie_api()
