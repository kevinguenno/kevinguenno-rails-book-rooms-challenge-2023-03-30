class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = @rooms.sort_by { rand }
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end
end
