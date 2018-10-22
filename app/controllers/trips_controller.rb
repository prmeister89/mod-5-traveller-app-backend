class TripsController < ApplicationController

  def index
    render json: Trip.all
  end

  def show
    render json: find_trip
  end

  def update
    render json: find_trip
    @trip.update(trip_params)
    # if @trip.save
    #   render json: @trip, status: :accepted
    # else
    #   render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    # end
  end

  def create
    render json: Trip.create(trip_params)
  end

  def destroy
    render json: Trip.find(params[:id]).destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:id, :location, :startDate, :endDate, :notes)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
