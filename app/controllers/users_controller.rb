class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

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

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url, notice: "Successfully created a user"}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_parameters)
        format.html { redirect_to user_url(@user), notice: "Successfully updated a user"}
      end
    end
  end

  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "Successfully deleted a user"}
    end
  end

  private
      def set_user
        @user = User.find(params[:id])
      end

      def user_parameters
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end