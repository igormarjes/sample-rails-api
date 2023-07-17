class CadastresController < ApplicationController
  before_action :set_cadastre, only: %i[ show update destroy ]

  # GET /cadastres
  def index
    @cadastres = Cadastre.all

    render json: @cadastres
  end

  # GET /cadastres/1
  def show
    render json: @cadastre
  end

  # POST /cadastres
  def create
    @cadastre = Cadastre.new(cadastre_params)

    if @cadastre.save
      render json: @cadastre, status: :created, location: @cadastre
    else
      render json: @cadastre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cadastres/1
  def update
    if @cadastre.update(cadastre_params)
      render json: @cadastre
    else
      render json: @cadastre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cadastres/1
  def destroy
    @cadastre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastre
      @cadastre = Cadastre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cadastre_params
      params.require(:cadastre).permit(:name, :cpf, :born)
    end
end
