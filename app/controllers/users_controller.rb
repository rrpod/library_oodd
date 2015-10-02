class UsersController < ApplicationController
  before_action :require_admin || :require_member, only: [:update, :edit]
  before_action :require_admin, only: [:destroy]

  def new
    @user = User.new
  end

  def index
    @users = User.where(role: "admin")
  end

  def index_users
    @user = User.where(role: "member")
  end

  def edit
    @user = User.find(params[:id])
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

      if !current_user
        session[:user_id] = @user.id

        redirect_to root_url
      else
        flash[:notice] = "User created successfully"
        redirect_to listadmins_url
      end
    else
      flash[:warn] = "User could not be created. Please check the conditions for each field while creating new user."
      redirect_to signup_url
    end
  end

  def update
    user_email = params[:user][:email]
    puts "SDFSDFDFDFF"
    @user = User.find_by_email(current_user.email)
    if @user
      puts @user
      puts user_params
      if @user.update(user_params)
        flash[:notice] = "profile updated successfully"
      else
        puts "blashasddf"
        flash[:warn] = "Could not update profile. Please check the conditions for each field while updating the user."
      end
      if current_user && current_user.admin?
        redirect_to listadmins_url
      else
        puts "!221"
        redirect_to root_url
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    email = @user.email
    @userbook = Checkouthistory.where(checkin: nil, email: email).count()
    if @userbook == 0
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
    else
      flash[:warn] = "Cannot Delete. User has a book to return!"
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
