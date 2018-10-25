class FlightsController < ApplicationController
  def index
    render json: Flight.all
  end

  def show
    render json: find_flight
  end

  def update
    render json: find_flight
    @flight.update(flight_params)
    # if @flight.save
    #   render json: @flight, status: :accepted
    # else
    #   render json: { errors: @flight.errors.full_messages }, status: :unprocessible_entity
    # end
  end

  def create
    render json: Flight.create(flight_params)
  end

  def destroy
    render json: Flight.find(params[:id]).destroy
  end

  private

  def flight_params
    params.permit(:id, :trip_id, :from, :to, :flightNumber, :departure, :gate, :boardingGroup, :seat, :ticket)
  end

  def find_flight
    @flight = Flight.find(params[:id])
  end
end
