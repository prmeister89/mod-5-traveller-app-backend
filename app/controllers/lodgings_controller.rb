class LodgingsController < ApplicationController
  def index
    render json: Lodging.all
  end

  def show
    render json: find_lodging
  end

  def update
    render json: find_lodging
    @lodging.update(lodging_params)
    # if @lodging.save
    #   render json: @lodging, status: :accepted
    # else
    #   render json: { errors: @lodging.errors.full_messages }, status: :unprocessible_entity
    # end
  end

  def create
    render json: Lodging.create(lodging_params)
  end

  def destroy
    render json: Lodging.find(params[:id]).destroy
  end

  private

  def lodging_params
    params.permit(:id, :trip_id, :name, :bookingCode, :checkin, :checkout, :address, :info)
  end

  def find_lodging
    @lodging = Lodging.find(params[:id])
  end
end
