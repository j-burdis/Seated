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
      render json: { error: 'Could not add to favourites.' }, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(cinema: @cinema)
    if @favourite&.destroy
      respond_to do |format|
        if params[:origin] == "favourites_index"
          format.turbo_stream { render turbo_stream: turbo_stream.remove("favourite-#{@cinema.id}") }
          format.html { redirect_to favourites_path, notice: "Favourite removed from your list." }
        else
          format.turbo_stream do
            render turbo_stream: turbo_stream.replace("toggle-favourite-#{@cinema.id}", partial: "favourites/toggle_button",
                                                                                        locals: { cinema: @cinema })
          end
          format.html { redirect_to cinema_path(@cinema), notice: "Favourite removed." }
        end
      end
    else
      render json: { error: 'Could not remove from favourites.' }, status: :unprocessable_entity
    end
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end
end
