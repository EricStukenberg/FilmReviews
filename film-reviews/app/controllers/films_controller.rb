class FilmsController < ApplicationController
    before_action :find_film, only: [:show, :edit, :update,]

    def index
        @films = Film.all
    end

    def show
       session[:film_id] = @film.id
    end

    def edit
        
    end

    def update
        
        @film.genre_ids = params[:film][:genre_ids]
        redirect_to film_path(@film)
    end

    def best
        @best_films = Film.sort_by_score
        render :best
    end

    private 
    def find_film
        @film = Film.find(params[:id])
    end

    def update_params
        params.require.(:film).permit(genre_ids: [])
    end

    def film_params
        params.require.(:film).permit(:title, :score, :director, :description, :release_year, genre_ids: [])
    end
end
