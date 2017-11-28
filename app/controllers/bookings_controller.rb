class BookingsController < ApplicationController
  def index
    @bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end
end
