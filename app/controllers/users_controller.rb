class UsersController < ApplicationController
  include Spina
  def show
    @user = Spina::User.find(params[:id])
  end

  def new
  	@user = Spina::User.new
  end

  def create
    @user = Spina::User.new(user_params)   
    if @user.save
    	flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
 private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
