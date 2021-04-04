class VintagesController < ApplicationController
  before_action :set_vintage, only: [:show, :edit, :update, :destroy]

  # GET /vintages
  def index
    @vintages = Vintage.all
  end

  # GET /vintages/1
  def show
  end

  # GET /vintages/new
  def new
    @vintage = Vintage.new
  end

  # GET /vintages/1/edit
  def edit
  end

  # POST /vintages
  def create
    @vintage = Vintage.new(vintage_params)

    if @vintage.save
      redirect_to @vintage, notice: 'Vintage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vintages/1
  def update
    if @vintage.update(vintage_params)
      redirect_to @vintage, notice: 'Vintage was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vintages/1
  def destroy
    @vintage.destroy
    redirect_to vintages_url, notice: 'Vintage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vintage
      @vintage = Vintage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vintage_params
      params.require(:vintage).permit(:year, :castle_id)
    end
end
