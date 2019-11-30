class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(gen_params)
    @genre.save
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(gen_params)
    redirect_to @genre
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private 

  def gen_params
    params.require(:genre).permit(:name)
  end  
end
