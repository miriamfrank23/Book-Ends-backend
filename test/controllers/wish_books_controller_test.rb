require 'test_helper'

class WishBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wish_book = wish_books(:one)
  end

  test "should get index" do
    get wish_books_url, as: :json
    assert_response :success
  end

  test "should create wish_book" do
    assert_difference('WishBook.count') do
      post wish_books_url, params: { wish_book: { book_id: @wish_book.book_id, user_id: @wish_book.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show wish_book" do
    get wish_book_url(@wish_book), as: :json
    assert_response :success
  end

  test "should update wish_book" do
    patch wish_book_url(@wish_book), params: { wish_book: { book_id: @wish_book.book_id, user_id: @wish_book.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy wish_book" do
    assert_difference('WishBook.count', -1) do
      delete wish_book_url(@wish_book), as: :json
    end

    assert_response 204
  end
end
