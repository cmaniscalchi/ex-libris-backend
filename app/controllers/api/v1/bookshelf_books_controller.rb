class Api::V1::BookshelfBooksController < ApplicationController

  def index
    @bookshelf_books = BookshelfBook.all
    render json: @bookshelf_books
  end

end
