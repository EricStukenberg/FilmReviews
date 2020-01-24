class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]
    def index
        @reviews = Review.all
    end

    def show
        
    end

    def new 
        @review = Review.new
        @film = Film.find(session[:film_id])
    end

    def create 
        
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @review.film_id = session[:film_id]
        if @review.save
            @review.film.update_score
            redirect_to user_path(current_user)
        else
            @film = Film.find(session[:film_id])
            render :new
        end
    end

    def edit 

    end

    def update
        if(@review.update(review_params))
            @review.film.update_score
            redirect_to user_path(current_user)
        else 
            render edit
        end
    end

    def destroy
        @review.destroy
        redirect_to user_path(current_user)
      end
    private
    def find_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:film_title, :content, :score, :user_id, :film_id)
    end

end
