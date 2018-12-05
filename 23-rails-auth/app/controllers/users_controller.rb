class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.create(user_params)
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
