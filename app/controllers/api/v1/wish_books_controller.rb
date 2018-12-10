class Api::V1::WishBooksController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :set_wish_book, only: [:show, :update, :destroy]

  # GET /wish_books
  def index
    @wish_books = WishBook.all
    render json: @wish_books
  end

  # GET /wish_books/1
  def show
    render json: @wish_book
  end

  # POST /wish_books
  def create
    @wish_book = WishBook.new(wish_book_params)

    if @wish_book.save
      render json: @wish_book, status: :created
    else
      render json: @wish_book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wish_books/1
  # def update
  #   if @wish_book.update(wish_book_params)
  #     render json: @wish_book
  #   else
  #     render json: @wish_book.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /wish_books/1
  def destroy
    @wish_book.destroy
  end

  private

    def set_wish_book
      @wish_book = WishBook.find(params[:id])
    end

    def wish_book_params
      params.require(:wish_book).permit(:user_id, :book_id)
    end
end
