class SongsController < ApplicationController
    before_action :find_by_id, only: [:show, :update, :edit]

    def index
        @songs = Song.all
    end

    def show
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(post_params(:name, :artist, :genre))
        redirect_to @song
    end

    def update
        # byebug
        @song.update(post_params(:name, :artist, :genre))
        redirect_to @song
    end

    private 
    
    def post_params(*args)
        params.require(:song).permit(args)
    end

    def find_by_id
        @song = Song.find(params[:id])
    end
end
