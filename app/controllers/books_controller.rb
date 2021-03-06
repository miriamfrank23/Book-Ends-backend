class BooksController < ApplicationController
  skip_before_action :authorized, only: [:index]
  before_action :set_book, only: [:show]

def index
   @books = Book.all
   render json: @books
   # @books = Book.paginate(:page => params[:page])
   # render json: {
   #   books: @books,
   #   page: @books.current_page,
   #   pages: @books.total_pages
   # }
 end

 # POST /books
 # def create
 #   @book = Book.create!(book_params)
 #   render json: @book, status: :created
 # end

 # GET /books/:id
 def show
   render json: @book, status: :ok
 end

 # PUT /books/:id
 # def update
 #   @book.update(book_params)
 #   head :no_content
 # end

 # DELETE /books/:id
 # def destroy
 #   @book.destroy
 #   head :no_content
 # end

 private

 # def book_params
 #   # whitelist params
 #   params.permit(:text, :user_id, :book_id)
 # end

 def set_book
   @book = Book.find(params[:id])
 end

end
