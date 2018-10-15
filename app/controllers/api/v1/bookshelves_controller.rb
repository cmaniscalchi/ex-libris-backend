class Api::V1::BookshelvesController < ApplicationController

  def index
    @bookshelves = Bookshelf.all
    render json: @bookshelves
  end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    if @bookshelf.save
      render json: @bookshelf
    else
      render json: {errors: "Bookshelf did not save"}
    end
  end

  def update
    @bookshelf = Bookshelf.find_by(id: params[:id])
    if @bookshelf.update_attributes(name: params[:name])
      render json: @bookshelf
    else
      render json: {errors: "Unable to rename bookshelf"}
    end
  end

  private

  def bookshelf_params
    params.require(:bookshelf).permit(:name, :user_id)
  end

end
