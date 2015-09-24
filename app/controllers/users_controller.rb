class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.where(role: "admin")
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user
      flash[:warn] = "This email id is already registered"
      redirect_to signup_url
      return
    end
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to signup_url
    end
  end
  def destroy
    @user = User.find(params[:id])
    if @user
      if @user.destroy
        flash[:notice] = "Admin was deleted successfully"
      else
        flash[:warn] = "Could not delete Admin"
      end
    else
      flash[:warn] = "Did not find Admin to delete"
    end
    redirect_to users_url
  end
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end
end
