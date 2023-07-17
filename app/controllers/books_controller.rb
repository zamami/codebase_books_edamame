class BooksController < ApplicationController
  def index
    @books = Book.all
    @reservations = Reservation.all
    @lendings = Lending.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end
end
