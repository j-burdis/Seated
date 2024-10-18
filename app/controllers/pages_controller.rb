class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
  def map
    @cinemas = Cinema.all

    # The `geocoded` scope filters only cinemas with coordinates
    @markers = @cinemas.geocoded.map do |cinema|
      {
        lat: cinema.latitude,
        lng: cinema.longitude,
        info_window_html: render_to_string(partial: "popup", locals: {cinema: cinema}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def home
  end

  def profile
  end
end
