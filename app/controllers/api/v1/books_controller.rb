class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.new(book_object: params[:book_object], user: params[:user])
    if @book.save
      render json: @book
    else
      render json: {errors: "Book did not save"}
    end
  end

  def book_search
    url = "https://www.goodreads.com/search/index.xml?key=" + ENV["GOODREADS_KEY"] + "&q=" + params["input"]
    request = RestClient.get(url)
    response = Hash.from_xml(request)
    render json: response
  end

  private

  def book_params
    params.permit(:book_object, :user)
  end

end
