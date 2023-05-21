class AliasesController < ApplicationController
  before_action :set_alias, only: %i[ show edit update destroy ]

  # GET /aliases or /aliases.json
  def index
    @aliases = Alias.all
  end

  # GET /aliases/1 or /aliases/1.json
  def show
  end

  # GET /aliases/new
  def new
    @alias = Alias.new
  end

  # GET /aliases/1/edit
  def edit
  end

  # POST /aliases or /aliases.json
  def create
    @alias = Alias.new(alias_params)

    respond_to do |format|
      if @alias.save
        format.html { redirect_to alias_url(@alias), notice: "Alias was successfully created." }
        format.json { render :show, status: :created, location: @alias }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aliases/1 or /aliases/1.json
  def update
    respond_to do |format|
      if @alias.update(alias_params)
        format.html { redirect_to alias_url(@alias), notice: "Alias was successfully updated." }
        format.json { render :show, status: :ok, location: @alias }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aliases/1 or /aliases/1.json
  def destroy
    @alias.destroy

    respond_to do |format|
      format.html { redirect_to aliases_url, notice: "Alias was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alias
      @alias = Alias.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alias_params
      params.require(:alias).permit(:title, :entity_id)
    end
end
