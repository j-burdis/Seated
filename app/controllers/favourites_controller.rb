class FavouritesController < ApplicationController
  before_action :set_cinema, only: %i[create destroy]

  def index
    @favourites = current_user.favourites
  end

  def create
    @favourite = current_user.favourites.new(cinema: @cinema)
    if @favourite.save
      Rails.logger.info "Favourite created successfully for cinema #{@cinema.id}"
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to cinema_path(@cinema) }
      end
    else
      Rails.logger.error "Error creating favourite: #{@favourite.errors.full_messages.join(", ")}"
      render json: { error: 'Could not add to favourites.' }, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(cinema: @cinema)
    if @favourite&.destroy
      Rails.logger.info "Favourite removed successfully for cinema #{@cinema.id}"
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to cinema_path(@cinema) }
      end
    else
      Rails.logger.error "Error removing favourite: #{@favourite&.errors&.full_messages&.join(", ") || 'Not found'}"
      render json: { error: 'Could not remove from favourites.' }, status: :unprocessable_entity
    end
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end
end
