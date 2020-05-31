class ArtistsController < ApplicationController
   def new
      @artist = Artist.new
   end

   def create
      @artist = Artist.create(artist_params(:name,:bio))
      redirect_to @artist
   end

   def show
      @artist = Artist.find_by(id: params[:id])
   end

   def edit
      @artist = Artist.find_by(id: params[:id])
   end

   def update
      @artist = Artist.update(artist_params(:name,:bio))
      redirect_to @artist
   end

   private

   def artist_params(*args)
      params.require(:artist).permit(*args)
   end
end
