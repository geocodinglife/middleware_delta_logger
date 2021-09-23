class Admin::SessionsController < Admin::ApplicationController
  before_action :authorize, except: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
    if @user
      session[:current_user_id] = @user.id
      redirect_to admin_users_path, notice: 'You have successfully signed in'
    else
      flash[:alert] = 'There was a problem with your username or password'
      render :new
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to '/login', notice: 'You have successfully logged out'
  end
end
