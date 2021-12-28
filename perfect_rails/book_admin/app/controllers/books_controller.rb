class BooksController < ApplicationController
  def show
    @book = Book.fund(params[:id]))

    respond_to do |format|
      format.html
      format.json
    end
end
