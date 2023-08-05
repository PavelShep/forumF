class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def update
    users_params[:admin] = convert_to_boolean(users_params[:admin])
    if @user.update(users_params)
      redirect_to users_path, notice: "User info was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def searchuser
    @users = User.where("nickname LIKE ?", "%" + params[:q] + "%")
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:nickname, :admin)
  end

  def convert_to_boolean(value)
    if value == "1"
      true
    else
      false
    end
  end

end