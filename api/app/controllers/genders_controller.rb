class GendersController < ApplicationController
  before_action :set_gender, only: [:show, :update, :destroy]

  # GET /genders
  def index
    if params[:intervalo]
      if params[:pg]
        @pagina = params[:pg].to_i
        @genders = Gender.all.withoutTimes.where("UPPER(description) ~* ?", params[:intervalo].upcase).limit(10).offset((@pagina - 1) * 10)
      else
        @genders = Gender.all.withoutTimes.where("UPPER(description) ~* ?", params[:intervalo].upcase)
      end
      @counter = Gender.all.onlyId.where("UPPER(description) ~* ?", params[:intervalo].upcase).count()
    else
      @genders = Gender.all.withoutTimes
      @counter = Gender.all.onlyId.count()
    end
    render json: { :total => @counter, :itens => @genders }, status: :ok
  end

  # GET /genders/1
  def show
    render json: @gender
  end

  # POST /genders
  def create
    @gender = Gender.new(gender_params)

    if @gender.save
      render json: @gender, status: :created, location: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genders/1
  def update
    if @gender.update(gender_params)
      render json: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genders/1
  def destroy
    @gender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender
      @gender = Gender.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gender_params
      params.require(:gender).permit(:description)
    end
end
