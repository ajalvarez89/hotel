class RoomsController < ApplicationController
  def index
    rooms = Room.all

    if rooms.present?
      render json: rooms, status: :ok
    else 
      render json: { error: 'No data was found' }, status: :not_found
    end
  end
end
