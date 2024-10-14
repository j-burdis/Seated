class FavouritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cinema, only: %i[create destroy]

  def index
    # @favourites = current_user.favourite_cinemas
  end

  def create
    @favourite = current_user.favourites.new(cinema: @cinema)
    if @favourite.save
      redirect_to cinemas_path, notice: 'Cinema added to favourites.'
    else
      redirect_to cinemas_path, alert: 'Could not add cinema to favourites.'
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(cinema: @cinema)
    @favourite.destroy if favourite
    redirect_to favourites_path, notice: 'Cinema removed from favourites.'
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end
end
