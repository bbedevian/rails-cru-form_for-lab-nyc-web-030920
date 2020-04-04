class ArtistsController < ActionController::Base
    def index 
        @artists = Artist.all
    end

    def new 
        @artist = Artist.new 
    end

    def create 
        artist = Artist.new(artist_params)
        artist.save
        redirect_to artist
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.update(artist_params)
        redirect_to artist
    end



    private 

    def artist_params
        params.require(:artist).permit(:name,:bio)
    end
end