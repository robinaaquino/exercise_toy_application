class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_parameters)

    if @user.save
      flash.now[:success] = "Successfully created a user"
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @user.update(user_parameters)
      flash.now[:success] = "Successfully updated a user"
      redirect_to @user
    else
      render 'edit'
    end

  end

  def destroy
    if @user.destroy
      flash.now[:success] = "Successfully deleted a user"
      redirect_to users_url
    else
      render 'index'
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_parameters
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
  end
end