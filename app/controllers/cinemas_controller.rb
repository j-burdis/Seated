class CinemasController < ApplicationController
  before_action :set_cinema, only: [:show]
  def index
    if params[:query].present?
      @cinemas = Cinema.search_by_name_and_address(params[:query])
    else
      @cinemas = Cinema.all
    end
  end

  def show
    @reviews = @cinema.reviews
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:id])
  end
end
