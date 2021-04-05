class AppellationsController < ApplicationController
  before_action :set_appellation, only: [:show, :edit, :update, :destroy]

  # GET /appellations
  def index
    @appellations = Appellation.all
  end

  # GET /appellations/1
  def show
  end

  # GET /appellations/new
  def new
    @appellation = Appellation.new
  end

  # GET /appellations/1/edit
  def edit
  end

  # POST /appellations
  def create
    @appellation = Appellation.new(appellation_params)

    if @appellation.save
      redirect_to @appellation, notice: 'Appellation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /appellations/1
  def update
    if @appellation.update(appellation_params)
      redirect_to @appellation, notice: 'Appellation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /appellations/1
  def destroy
    @appellation.destroy
    redirect_to appellations_url, notice: 'Appellation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appellation
      @appellation = Appellation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appellation_params
      params.require(:appellation).permit(:name, :location)
    end
end
