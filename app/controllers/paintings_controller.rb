class PaintingsController < ApplicationController

def index
  @paintings = Painting.all
end

def create
  painting = Painting.create(painting_params)
  redirect_to paintings_path
end

def new
  @painting = Painting.new
end

def show
  @painting = Painting.find(params[:id])
end

def destroy
  painting = Painting.find(params[:id])
  painting.destroy
  redirect_to paintings_path
end

private

def painting_params
  parameters = params.require(:painting).permit(:title, :year_made, :img_url, :artist_id)
end

end
