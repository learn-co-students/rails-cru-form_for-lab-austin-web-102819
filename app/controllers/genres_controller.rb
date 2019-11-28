class GenresController < ApplicationController
    before_action :find_by_id, only: [:show, :update, :edit]
    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(post_params(:name))
        redirect_to @genre
    end

    def update
        @genre.update(post_params(:name))
        redirect_to @genre
    end

    private 
    
    def post_params(*args)
        params.require(:genre).permit(args)
    end

    def find_by_id
        @genre = Genre.find(params[:id])
    end
end
