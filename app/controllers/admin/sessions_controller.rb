class Admin::SessionsController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def new
  end

  def create
  end

  def destroy
  end
end