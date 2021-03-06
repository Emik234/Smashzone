class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]
  def index
    @users = User.all
  end

  def edit
  end

  def show
    @user = User.all
    else
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def destroy
    @user.destroy
    redirect_to @user, notice: "User deleted"
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "User successfully created"
      else
        render :new
  end
end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User successfully updated"
    else
      render :edit
  end
end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:fname, :alias, :fid, :ffc)
  end
end
