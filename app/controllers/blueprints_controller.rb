class BlueprintsController < ApplicationController
  before_action :set_blueprint, only: [:show, :edit, :update, :destroy]

  # GET /blueprints
  # GET /blueprints.json
  def index
    @blueprints = Blueprint.all
  end

  # GET /blueprints/1
  # GET /blueprints/1.json
  def show
  end

  # GET /blueprints/new
  def new
    @blueprint = Blueprint.new
  end

  # GET /blueprints/1/edit
  def edit
  end

  # POST /blueprints
  # POST /blueprints.json
  def create
    @blueprint = Blueprint.new(blueprint_params)

    respond_to do |format|
      if @blueprint.save
        format.html { redirect_to @blueprint, notice: 'Blueprint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blueprint }
      else
        format.html { render action: 'new' }
        format.json { render json: @blueprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blueprints/1
  # PATCH/PUT /blueprints/1.json
  def update
    respond_to do |format|
      if @blueprint.update(blueprint_params)
        format.html { redirect_to @blueprint, notice: 'Blueprint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blueprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blueprints/1
  # DELETE /blueprints/1.json
  def destroy
    @blueprint.destroy
    respond_to do |format|
      format.html { redirect_to blueprints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blueprint
      @blueprint = Blueprint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blueprint_params
      params.require(:blueprint).permit(:name, :description, :harbor_id)
    end
end
