class Admin::ApplicationController < ApplicationController
  before_action :authorize
  
  def current_user
    false
  end

  def authorize
    redirect_to '/login', alert: 'Please login to view admin pages'
  end
end