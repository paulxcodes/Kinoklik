class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "User was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to home_path, notice: "User was successfully deleted"
    else
      render :edit
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :biography,:password, :password_confirmation, :avatar, :photo_cache, :phone,:language, :is_filmmaker, :is_affiliate, :wants_newsletter)
  end
end
