class VotesController < ApplicationController
  before_action :set_review, only: %i[create destroy]
  before_action :set_cinema, only: %i[create destroy]

  def create
    @vote = current_user.votes.new(review: @review)

    if @vote.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to cinema_path(@cinema) }
      end
    else
      render json: { error: 'Could not cast vote.' }, status: :unprocessable_entity
    end
  end

  def destroy
    @vote = current_user.votes.find_by(review: @review)
    if @vote&.destroy
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to cinema_path(@cinema) }
      end
    else
      render json: { error: 'Could not remove vote.' }, status: :unprocessable_entity
    end
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_cinema
    @cinema = @review.cinema
  end
end
