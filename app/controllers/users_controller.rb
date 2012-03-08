class UsersController < ApplicationController

  before_filter :require_login, :check_admin
  
  def check_admin
    if current_user.email != "admin@logmycalls.com"
      redirect_to login_path
    end
  end
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
end