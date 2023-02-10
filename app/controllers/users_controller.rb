class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_parameters)
    end

    def destroy
        @user.destroy
    end

    private
        def user_parameters
            params.require(:user).permit(:name, :email)
        end
end