class FormulairesController < ApplicationController
  before_action :set_formulaire, only: [:show, :edit, :update, :destroy]

  # GET /formulaires
  # GET /formulaires.json
  def index
    @formulaires = Formulaire.all
  end

  # GET /formulaires/1
  # GET /formulaires/1.json
  def show
  end

  # GET /formulaires/new
  def new
    @formulaire = Formulaire.new
  end

  # GET /formulaires/1/edit
  def edit
  end

  # POST /formulaires
  # POST /formulaires.json
  def create
    @formulaire = Formulaire.new(formulaire_params)

    respond_to do |format|
      if @formulaire.save
        format.html { redirect_to @formulaire, notice: 'Formulaire was successfully created.' }
        format.json { render :show, status: :created, location: @formulaire }
      else
        format.html { render :new }
        format.json { render json: @formulaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulaires/1
  # PATCH/PUT /formulaires/1.json
  def update
    respond_to do |format|
      if @formulaire.update(formulaire_params)
        format.html { redirect_to @formulaire, notice: 'Formulaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulaire }
      else
        format.html { render :edit }
        format.json { render json: @formulaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulaires/1
  # DELETE /formulaires/1.json
  def destroy
    @formulaire.destroy
    respond_to do |format|
      format.html { redirect_to formulaires_url, notice: 'Formulaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulaire
      @formulaire = Formulaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulaire_params
      params.require(:formulaire).permit(:title, :description , questions_attributes: {})
    end
end
