class NotificationsController < ApplicationController
  before_action :set_notification, only: [:show, :edit, :update, :destroy]
  before_action :mark_as_read, only: :index
  # GET /notifications
  def index
    if current_user.prefer.comment and current_user.prefer.like and current_user.prefer.follow
      @notifications = Notification.alln(current_user.id)
    elsif current_user.prefer.comment and current_user.prefer.like
      @notifications = Notification.onlycl(current_user.id)
    elsif current_user.prefer.comment and current_user.prefer.follow
      @notifications = Notification.onlycf(current_user.id)
    elsif current_user.prefer.like and current_user.prefer.follow
      @notifications = Notification.onlyfl(current_user.id)
    elsif current_user.prefer.like 
      @notifications = Notification.onlyl(current_user.id)
    elsif current_user.prefer.follow
      @notifications = Notification.onlyf(current_user.id)
    elsif current_user.prefer.comment
      @notifications = Notification.onlyc(current_user.id)
    else 
     @notifications = nil
    end
  end

  # GET /notifications/1
  def show
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
  end

  # POST /notifications
  def create
    @notification = Notification.new(notification_params)


  end

  # PATCH/PUT /notifications/1
  def update
    if @notification.update(notification_params)
      redirect_to @notification, notice: 'Notification was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /notifications/1
  def destroy
    @notification.destroy
    redirect_to notifications_url, notice: 'Notification was successfully destroyed.'
  end



  def mark_as_read
      @unread = current_user.notifications.where(read: false)
      @unread.each do |unread|
        unread.update_attribute(:read, true)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notification_params
      params.require(:notification).permit(:user_id, :creater_id, :kind, :read)
    end
end
