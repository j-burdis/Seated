class NotificationsController < ApplicationController
  def index
    # @notifications = Notification.all
    @notifications = current_user.notifications.includes(:comment, :vote).order(created_at: :desc)
  end

  def destroy
    @notification = current_user.notifications.find_by(id: params[:id])

    if @notification
      @notification.destroy
      redirect_to notifications_path # notice: 'Notification deleted'
    else
      redirect_to notifications_path, alert: 'Could not delete notification'
    end
  end

  def mark_as_read
    @notification = current_user.notifications.find_by(id: params[:id])

    if @notification
      @notification.update(read: true)
      redirect_to notifications_path # notice: 'Notification marked as read.'
    else
      redirect_to notifications_path, alert: 'Notification not found.'
    end
  end
end
