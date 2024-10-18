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
        format.html { redirect_to cinema_path(@cinema), notice: 'Cinema added to favourites.' }
        format.json { render json: { success: true, new_action: cinema_favourite_path(@cinema, @favourite), new_method: "delete" } }
      else
        format.html { redirect_to cinema_path(@cinema), alert: 'Could not add cinema to favourites.' }
        format.json { render json: { success: false } }
      end
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(cinema: @cinema)
    respond_to do |format|
      if @favourite&.destroy
        format.html { redirect_to favourites_path, notice: 'Cinema removed from favourites.' }
        format.json { render json: { success: true, new_action: cinema_favourites_path(@cinema), new_method: "post" } }
      else
        format.html { redirect_to favourites_path, alert: 'Could not remove cinema from favourites.' }
        format.json { render json: { success: false } }
      end
    end
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end
end
# class FavouritesController < ApplicationController
#   before_action :authenticate_user!
#   before_action :set_cinema, only: %i[create destroy]

#   def index
#     @favourites = current_user.favourites
#   end

#   def create
#     @favourite = current_user.favourites.new(cinema: @cinema)
#     if @favourite.save
#       redirect_to cinemas_path, notice: 'Cinema added to favourites.'
#     else
#       redirect_to cinemas_path, alert: 'Could not add cinema to favourites.'
#     end
#   end

#   def destroy
#     @favourite = current_user.favourites.find_by(cinema: @cinema)
#     if @favourite
#       @favourite.destroy
#       redirect_to favourites_path, notice: 'Cinema removed from favourites.'
#     else
#       redirect_to favourites_path, alert: 'Could not remove cinema from favourites.'
#     end
#   end

#   private

#   def set_cinema
#     @cinema = Cinema.find(params[:cinema_id])
#   end
# end
