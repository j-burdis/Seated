class CinemasController < ApplicationController
  before_action :set_cinema, only: [:show]
  def index
    @cinemas = Cinema.all
  end

  def show
    @reviews = @cinemas.reviews
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:id])
  end
end
