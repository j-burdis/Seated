class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: %i[create destroy]
  before_action :set_cinema, only: %i[create destroy]

  def create # rubocop:disable Metrics/MethodLength,Lint/RedundantCopDisableDirective
    @vote = Vote.new
    @vote.review = @review
    @vote.user = current_user

    # @notification = Notification.new
    # @notification.vote = @vote
    # @notification.user = @review.user
    # @notification = Notification.new(vote: @vote, user: @review.user)

    return unless @vote.save

    # @notification.save
    redirect_to cinema_path(@cinema)

    # if @vote.save
    #   # @notification.save
    #   redirect_to cinema_path(@cinema), notice: 'Could not add vote'
    # else
    #   redirect_to cinema_path(@cinema), alert: 'Could not add vote'
    # end
  end

  def destroy
    @vote = Vote.find(params[:id])
    return unless @vote.user == current_user

    @vote.destroy
    redirect_to cinema_path(@cinema)

    # if @vote.user == current_user
    #   @vote.destroy
    #   redirect_to cinema_path(@cinema), notice: 'Vote removed'
    # else
    #   redirect_to cinema_path(@cinema), alert: 'Could not remove vote'
    # end
    # rescue ActiveRecord::RecordNotFound
    #   redirect_to cinema_path(@cinema), alert: 'Vote not found'
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_cinema
    @cinema = @review.cinema
  end
end
