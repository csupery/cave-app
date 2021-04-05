class CastlesController < ApplicationController
  before_action :set_castle, only: [:show, :edit, :update, :destroy]

  # GET /castles
  def index
    @castles = Castle.all
    @vintage = Vintage.all
  end

  # GET /castles/1
  def show
  end

  # GET /castles/new
  def new
    @castle = Castle.new
  end

  # GET /castles/1/edit
  def edit
  end

  # POST /castles
  def create
    @castle = Castle.new(castle_params)

    if @castle.save
      redirect_to @castle, notice: 'Castle was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /castles/1
  def update
    if @castle.update(castle_params)
      redirect_to @castle, notice: 'Castle was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /castles/1
  def destroy
    @castle.destroy
    redirect_to castles_url, notice: 'Castle was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle
      @castle = Castle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def castle_params
      params.require(:castle).permit(:name, :appellation_id)
    end
end
