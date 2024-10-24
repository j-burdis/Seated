class CinemasController < ApplicationController
  before_action :set_cinema, only: [:show]
  def index
    if params[:query].present?
      @cinemas = Cinema.search_by_name_and_address(params[:query])
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))
    else
      @cinemas = Cinema.all
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))
    end

    respond_to do |format|
      format.html
      format.json { render json: @cinemas.as_json(only: %i[id name address image_url description average_rating]) }
    end
  end

  def show
    @reviews = @cinema.reviews.order(created_at: :desc)
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:id])
  end
end
