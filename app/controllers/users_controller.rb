class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def index
      @user = User.all
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

def delete
  @user = User.find(params[:id])
end

  def destroy
      @user = User.find(params[:id])
     # if current_user
      #    redirect_to users_url, notice: "You can't destroy yourself."
       #   else
          @user.destroy
          flash[:success] = "User destroyed."
          redirect_to users_url
      # end
  end
  
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
