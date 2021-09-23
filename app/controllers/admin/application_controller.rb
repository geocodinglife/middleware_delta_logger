class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin'
  before_action :authorize

  def current_user
    @user ||= User.find(session[:current_user_id]) if session[:current_user_id]
  end

  def authorize
    unless current_user
      redirect_to '/login', alert: 'Please login to view admin pages'
    end
  end
end