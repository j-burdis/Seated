class NotificationsController < ApplicationController
  def index
    # @notifications = Notification.all
    @notifications = current_user.notifications
  end

  def destroy
    @notification = Notification.find(params[:id])

    if @notification
      @notification.destroy
      redirect_to notifications_path, notice: 'Notification deleted'
    else
      redirect_to notifications_path, alert: 'Could not delete notification'
    end
  end
end
