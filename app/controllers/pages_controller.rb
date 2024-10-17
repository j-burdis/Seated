class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def map
    @cinemas = Cinema.all

    # The `geocoded` scope filters only flats with coordinates
    @markers = @cinemas.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
  def home
  end

  def profile
  end
end
