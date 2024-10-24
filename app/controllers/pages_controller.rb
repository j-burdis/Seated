class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
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
    @top_cinemas = current_user.cinemas_by_highest_average_rating
  end
end
