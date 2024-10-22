class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: %i[create destroy]
  before_action :set_cinema, only: %i[create destroy]

  def create # rubocop:disable Metrics/MethodLength,Lint/RedundantCopDisableDirective
    @comment = @review.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append("comments-#{@comment.review.id}".to_sym,
                                                   partial: "comments/comment",
                                                   locals: { comment: @comment, user: current_user })
        end
        format.html { redirect_to cinema_path(@cinema) }
      end
    else
      redirect_to cinema_path(@cinema), status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      # || current_user.admin?
      @comment.destroy
      redirect_to cinema_path(@cinema), notice: 'Comment removed'
    else
      redirect_to cinema_path(@cinema), alert: 'Could not remove comment'
    end
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_cinema
    @cinema = @review.cinema
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
