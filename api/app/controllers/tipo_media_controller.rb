class TipoMediaController < ApplicationController
  before_action :set_tipo_medium, only: [:show, :update, :destroy]

  # GET /tipo_media
  def index
    if params[:intervalo]
      if params[:pg]
        @pagina = params[:pg].to_i
        @tipo_media = TipoMedia.all.select(:id, :description).where("UPPER (description) ~* ?", params[:intervalo].upcase).limit(10).offset((@pagina - 1) * 10)
      else
        @tipo_media = TipoMedia.all.select(:id, :description).where("UPPER (description) ~* ?", params[:intervalo].upcase)
      end
      @counter = TipoMedia.all.onlyId.where("UPPER (description) ~* ?", params[:intervalo].upcase).count()
    else
      @tipo_media = TipoMedia.all.select(:id, :description)
      @counter = TipoMedia.all.onlyId.count()
    end
    render json: { :total => @counter, :itens => @tipo_media}, status: :ok
  end

  # GET /tipo_media/1
  def show
    render json: @tipo_medium
  end

  # POST /tipo_media
  def create
    @tipo_medium = TipoMedia.new(tipo_medium_params)

    if @tipo_medium.save
      render json: @tipo_medium, status: :created, location: @tipo_medium
    else
      render json: @tipo_medium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_media/1
  def update
    if @tipo_medium.update(tipo_medium_params)
      render json: @tipo_medium
    else
      render json: @tipo_medium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_media/1
  def destroy
    @tipo_medium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_medium
      @tipo_medium = TipoMedia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_medium_params
      params.require(:tipo_medium).permit(:description)
    end
end
