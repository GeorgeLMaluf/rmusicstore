class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]

  # GET /albums
  def index
    if params[:intevalo]
      if params[:pg]
        @pagina = params[:pg].to_i
        @albums = Album.all
          .where("UPPER(title) ~* ?", params[:intevalo].upcase).limit(10).offset((@pagina -1) * 10)
      else
        @albums = Album.all
          .where("UPPER(title) ~* ?", params[:intevalo].upcase)
      end
      @counter = Album.all.onlyId.count()
    else
      @counter = Album.all.onlyId.count()
      @albums = Album.all        
    end
    render json: {
      :total => @counter,
      :itens => @albums.as_json(include: [
        {gender: {only: [:id, :description]}},
        {artist: {only: [:id, :name]}},
        {tipo_media: {only: [:id, :description]}}
      ], only: [:id, :title, :gender, :artist, :tipo_media, :cover, :price])
    }, status: :ok
  end

  # GET /albums/1
  def show
    render json: @album
  end

  # POST /albums
  def create
    @album = Album.new(album_params)

    if @album.save
      render json: @album, status: :created, location: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /albums/1
  def update
    if @album.update(album_params)
      render json: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /albums/1
  def destroy
    @album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def album_params
      params.require(:album).permit(:title, :gender_id, :artist_id, :tipo_media_id, :cover, :price)
    end
end
