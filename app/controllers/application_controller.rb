class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_sidebar, :set_react_data, :authenticate_user!, :set_paper_trail_whodunnit, :get_notification_badge

  layout :set_layout

  def set_sidebar
    @areas = Area.all
  end

  def set_react_data
    @react_areas = Area.includes(parameters: {numbers: :lines}).all.collect do |area|
      {
        id: area.id,
        name: area.name,
        parameters: area.parameters.collect do |parameter|
          {
            id: parameter.id,
            name: parameter.name,
            numbers: parameter.numbers.collect do |number|
              {
                id: number.id,
                name: number.name,
                lines: number.lines.collect do |line|
                  {
                    id: line.id,
                    name: line.name
                  }
                end
              }
            end
          }
        end
      }
    end
  end

  def set_layout
    if devise_controller?
      'devise'
    else
      'application'
    end
  end

  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user.role == "admin"
  end

  def get_notification_badge
    @notif_counts = Notification.includes(document: {line: {number: {parameter: {area: :user}}}}).where(users: {id: current_user.id}, is_accepted: false).count rescue 0
  end
end
