class BooksController < ApplicationController
  protect_from_forgery expect: [:destroy]
  # hooks
  before_action :set_book, only: [:show, :destroy]

  def show
    # pricate メソッドに以降
    # @book = Book.fund(params[:id]))

    respond_to do |format|
      format.html
      format.json
    end

  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
