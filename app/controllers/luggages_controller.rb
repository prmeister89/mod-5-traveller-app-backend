class LuggagesController < ApplicationController

  def index
    render json: Luggage.all
  end

  def show
    render json: find_luggage
  end

  def update
    render json: find_luggage
    @luggage.update(luggage_params)
    # if @luggage.save
    #   render json: @luggage, status: :accepted
    # else
    #   render json: { errors: @luggage.errors.full_messages }, status: :unprocessible_entity
    # end
  end

  def create
    render json: Luggage.create(luggage_params)
  end

  def destroy
    render json: Luggage.find(params[:id]).destroy
  end

  private

  def luggage_params
    params.permit(:id, :trip_id, :qty, :item)
  end

  def find_luggage
    @luggage = Luggage.find(params[:id])
  end

end
