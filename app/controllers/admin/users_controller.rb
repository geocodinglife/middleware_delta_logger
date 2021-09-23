class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'Moderators was successfully updated'
      redirect_to admin_users_path
    else
      flash[:alert] = 'There was a problem updating user'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :password)
  end
end