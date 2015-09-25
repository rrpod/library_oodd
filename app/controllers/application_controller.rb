require 'time'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_member
    redirect_to '/' unless current_user.member?
  end

  def require_admin
    redirect_to '/' unless current_user.admin?
  end

  def history_book(isbn)
    current_time = Time.now.utc.iso8601
    Checkouthistory.where(isbn: isbn, checkin: nil).update_all(checkin: current_time)
    puts "done updating!"
  end
  end