class UsersController < ApplicationController
    before_action :set_user, only: %i[ show destroy ]

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
                format.html { redirect_to users_url}
            end
        end
    end

    def destroy
        @user.destroy

        respond_to do |format|
            format.html { redirect_to users_url}
        end
    end

    private
        def set_user
            @user = User.find(params[:id])
        end

        def user_parameters
            params.require(:user).permit(:name, :email)
        end
end