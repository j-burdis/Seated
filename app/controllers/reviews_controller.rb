class ReviewsController < ApplicationController
  before_action :set_cinema, only: %i[new create]
  before_action :set_review, only: %i[edit update destroy]

  def new
    @review = Review.new
  end

  def create
    @review = @cinema.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to cinema_path(@cinema)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to cinema_path(@cinema)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to cinema_path(@cinema)
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:cinema_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:screen, :seat, :pref_seat, :content, :rating, :image_url)
  end
end
