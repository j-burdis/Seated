class CinemasController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_cinema, only: [:show]

  def index # rubocop:disable Metrics/MethodLength
    if params[:query].present?
      @cinemas = Cinema.search_by_name_and_address(params[:query])
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))
    else
      params[:sorted_by]
      @cinemas = Cinema.all
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))
    end

    respond_to do |format|
      format.html
      format.json { render json: @cinemas.as_json(only: %i[id name address image_url description average_rating]) }
    end
  end

  def show
    @reviews = @cinema.reviews

    case params[:filter]
    when "rating_high_to_low"
      @reviews = @reviews.order(rating: :desc)
    when "rating_low_to_high"
      @reviews = @reviews.order(rating: :asc)
    when "date_oldest"
      @reviews = @reviews.order(created_at: :asc)
    else # Default to newest first
      @reviews = @reviews.order(created_at: :desc)
    end
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:id])
  end
end
