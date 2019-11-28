class ArtistsController < ApplicationController
    before_action :find_by_id, only: [:show, :update, :edit]
    def show
        # byebug
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(post_params(:name, :bio))
        redirect_to @artist
    end

    def update
        @artist.update(post_params(:name, :bio))
        redirect_to @artist
    end

    private 
    
    def post_params(*args)
        params.require(:artist).permit(args)
    end

    def find_by_id
        @artist = Artist.find(params[:id])
    end
end
