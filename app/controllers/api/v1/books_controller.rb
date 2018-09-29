class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: {errors: "Book did not save"}
    end
  end

  def book_details
    url = "https://www.goodreads.com/book/show/" + params["id"].to_s + ".xml?key=" + ENV["GOODREADS_KEY"]
    request = RestClient.get(url)
    response = Hash.from_xml(request)
    render json: response
  end

  def book_search
    url = "https://www.goodreads.com/search/index.xml?key=" + ENV["GOODREADS_KEY"] + "&q=" + params["input"]
    request = RestClient.get(url)
    response = Hash.from_xml(request)
    render json: response
  end

  def author_book_search
    url = "https://www.goodreads.com/author/list/" + params["authorId"].to_s + ".xml?key=" + ENV["GOODREADS_KEY"]
    request = RestClient.get(url)
    response = Hash.from_xml(request)
    render json: response
  end

  def book_cover_search
    url = "https://www.googleapis.com/books/v1/volumes?q=" + params["title"] + params["author"] + "&maxResults=30&orderBy=relevance&printType=books&key=" + ENV["GOOGLE_BOOKS_KEY"]
    request = RestClient.get(url)
    render json: request
  end

  def destroy
    Book.find_by(id: params[:id]).destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :goodreads_book_id, :author, :goodreads_author_id, :publication_year, :image_url, :bookshelf_id)
  end

end
