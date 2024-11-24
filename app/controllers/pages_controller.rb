class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home map]

  def map # rubocop:disable Metrics/MethodLength
    if params[:query].present?
      @cinemas = Cinema.search_by_name_and_address(params[:query])
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))
    else
      @cinemas = Cinema.all
                       .order(Arel.sql("COALESCE(average_rating, 0) DESC"))

      # The `geocoded` scope filters only cinemas with coordinates

      @markers = @cinemas.geocoded.map do |cinema|
        {
          lat: cinema.latitude,
          lng: cinema.longitude,
          info_window_html: render_to_string(partial: "popup", locals: { cinema: cinema }),
          marker_html: render_to_string(partial: "marker")
        }
      end
    end

    @markers = @cinemas.geocoded.map do |cinema|
      {
        lat: cinema.latitude,
        lng: cinema.longitude,
        info_window_html: render_to_string(partial: "popup", locals: { cinema: cinema }),
        marker_html: render_to_string(partial: "marker")
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: @cinemas.as_json(only: %i[id name address image_url description average_rating]) }
    end
  end

  def home
    @best_cinemas = Cinema.joins(:reviews)
                          .group('cinemas.id')
                          .select('cinemas.*, AVG(reviews.rating) AS average_rating')
                          .order('AVG(reviews.rating) DESC')
                          .limit(3)

    @recent_reviews = Review.includes(:cinema, :user)
                            .order(created_at: :desc)
                            .limit(3)
  end

  def profile
    @user_top_cinemas = current_user.cinemas_by_highest_average_rating

    @reviews = current_user.reviews
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
end
