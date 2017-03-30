class NotificationsController < ApplicationController
  def index
   @notifications = Notification.includes(document: {line: {number: {parameter: {area: :user}}}}).where(users: {id: current_user.id}, is_accepted: false)
  end
end
