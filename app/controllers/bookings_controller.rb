class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = Room.find(params[:room_id])
    if @booking.save
      redirect_to room_path(@booking.room)
      flash[:alert] = "Votre réservation à bien été prise en compte."
    else
      # render "rooms/show", status: :unprocessable_entity
      redirect_to room_path(@booking.room)
      flash[:alert] = "Veuillez remplir les deux dates"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
