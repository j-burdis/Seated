class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: %i[create destroy]
  before_action :set_cinema, only: %i[create destroy]

  # def create # rubocop:disable Metrics/MethodLength,Lint/RedundantCopDisableDirective
  #   @vote = Vote.new
  #   @vote.review = @review
  #   @vote.user = current_user

  #   return unless @vote.save

  #   # @notification.save
  #   redirect_to cinema_path(@cinema)
  # end

  def create
    # @vote = current_user.votes.create(review: @review)
    @vote = Vote.new(review: @review, user: current_user)
    # @vote = Vote.new
    # @vote.review = @review
    # @vote.user = current_user

    respond_to do |format|
      if @vote.save
        format.json do
          render json: { success: true, 
                         vote_count: @review.votes.count, 
                         vote_exists: true,
                         delete_vote_url: cinema_review_vote_path(@review.cinema, @review, @vote) }
        end
      else
        format.json { render json: { success: false }, status: :unprocessable_entity }
      end
    end
  end

  # def destroy
  #   @vote = Vote.find(params[:id])
  #   return unless @vote.user == current_user

  #   @vote.destroy
  #   redirect_to cinema_path(@cinema)

  # if @vote.user == current_user
  #   @vote.destroy
  #   redirect_to cinema_path(@cinema), notice: 'Vote removed'
  # else
  #   redirect_to cinema_path(@cinema), alert: 'Could not remove vote'
  # end
  # rescue ActiveRecord::RecordNotFound
  #   redirect_to cinema_path(@cinema), alert: 'Vote not found'
  # end

  def destroy # rubocop:disable Metrics/MethodLength
    @vote = current_user.votes.find(params[:id])
    if @vote.present?
      @vote.destroy
      Rails.logger.info "Vote destroyed: #{@vote.id}"
    else
      Rails.logger.warn "Vote not found for user: #{current_user.id}"
    end

    respond_to do |format|
      format.json do
        render json: { success: true, 
                       vote_count: @review.votes.count,
                       vote_exists: false,
                       create_vote_url: cinema_review_votes_path(@review.cinema, @review),
                       delete_vote_url: cinema_review_vote_path(@review.cinema, @review, @vote) }
      end
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
