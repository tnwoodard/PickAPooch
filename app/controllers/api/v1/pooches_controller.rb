class Api::V1::PoochesController < ApplicationController
  def index
    pooch = Pooch.all.order(created_at: :asc)
    render json: pooch
  end

  def create
    pooch = Pooch.create!(pooch_params)
    if pooch
      render json: pooch
    else
      render json: pooch.errors
    end
  end

  def show
    render json: @pooch
  end

  def destroy
    @pooch&.destroy
    render json: { message: 'Sad to see the pooch go! Your pooch was deleted' }
  end

  private

  def pooch_params
    params.permit(:name, :age, :keywords, :description) # image was not included as a param because image is default
  end

  def set_pooch
    @pooch = Pooch.find(params[:id])
  end
end
