class Admin::ApplicationController < ApplicationController
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