class Admin::UsersController < ApplicationController

  # need to set up views and an enum for roles
  # next i have to set up sessions to hold a login


  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
    else
    end
  end

  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end
