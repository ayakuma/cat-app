class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end
  
  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit 
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end