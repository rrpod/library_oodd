class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.where(role: "admin")
  end

  def index_users
    @user = User.where(role: "member")
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user
      flash[:warn] = "This email id is already registered"
      redirect_to signup_url
      return
    end
    if !current_user
      params[:user][:role] = "member"
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
        if @user.admin?
          flash[:notice] = "Admin was deleted successfully"
        else
          flash[:notice] = "User was deleted successfully"
        end
      else
        if @user.admin?
          flash[:warn] = "Could not delete Admin"
        else
          flash[:warn] = "Could not delete User"
        end

      end
    else
      if @user.admin?
        flash[:warn] = "Did not find Admin to delete"
      else
        flash[:warn] = "Did not find User to delete"
      end
    end
    if @user.admin?
      redirect_to listadmins_url
    else
      redirect_to index_users_path
    end
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end
end
