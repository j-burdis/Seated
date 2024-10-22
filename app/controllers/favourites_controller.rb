class FavouritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cinema, only: %i[create destroy]

  def index
    @favourites = current_user.favourites
  end

  def create
    @favourite = current_user.favourites.new(cinema: @cinema)
    respond_to do |format|
      if @favourite.save
        format.html { redirect_to cinema_path(@cinema) }
        # format.json do
        # render json: { success: true, new_action: cinema_favourite_path(@cinema, @favourite), new_method: "delete" }
        # end
      else
        format.html { redirect_to cinema_path(@cinema) }
        # format.json { render json: { success: false } }
      end
    end
  end

  def destroy
    puts "************************"
    puts "************************"
    puts "************************"
    puts request.referrer
    puts params
    # raise
    @favourite = current_user.favourites.find_by(cinema: @cinema)
    respond_to do |format|
      if @favourite.destroy
        # format.turbo_stream
        format.html { params[:show] ? (redirect_to cinema_path(@cinema)) : favourites_path }
        # format.json { render json: { success: true, new_action: cinema_favourites_path(@cinema), new_method: "post" } }
      else
        format.html { redirect_to favourites_path, alert: 'Could not remove cinema from favourites.' }
        # format.json { render json: { success: false } }
      end
    end
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end
end
