class Api::V1::BooksController < ApplicationController

  require 'uri'
  require 'net/https'
  require 'json'
  require 'addressable/uri'

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

  def book_search
    url = "https://www.goodreads.com/search/index.xml?key=" + ENV["GOODREADS_KEY"] + "&q=" + params["input"]
    request = RestClient.get(url)
    response = Hash.from_xml(request)
    render json: response
  end

  def book_details
    url = "https://www.goodreads.com/book/show/" + params["id"].to_s + ".xml?key=" + ENV["GOODREADS_KEY"]
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
    uri = URI("https://api.cognitive.microsoft.com/bing/v7.0/images/search?q=book+cover+" + URI.escape(params["title"] + "+" + params["author"]) + "&aspect=tall&minHeight=500&maxHeight=1000&minWidth=333")
    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = ENV["BING_IMAGE_SEARCH_KEY"]
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end
    render json: response.body
  end

  def update
    @book = Book.find_by(id: params[:id])
    if params[:image_url] != nil
      if @book.update_attributes(image_url: params[:image_url])
        render json: @book
      end
    elsif params[:bookshelf_id] != nil
      if @book.update_attributes(bookshelf_id: params[:bookshelf_id])
        render json: @book
      end
    else
      render json: {errors: "Book did not save"}
    end
  end

  def destroy
    Book.find_by(id: params[:id]).destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :goodreads_book_id, :author, :goodreads_author_id, :publication_year, :image_url, :bookshelf_id)
  end

end
