class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def new
        @user = User.new
    end

    def show 
        @user = current_user
        @reviews = @user.reviews

    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to '/welcome'
    end

    def reviews
        @user = current_user
        @reviews = Review.find_by(user_id: @user.id)
       
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
