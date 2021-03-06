class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]

  # GET /stocks
  def index
    @stocks = Stock.all
  end

  # GET /stocks/1
  def show
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  def create
    @stock = Stock.new(stock_params)
    @previous_stock = Stock.where(vintage_id: @stock.vintage_id, size: @stock.size, castle_id: @stock.castle_id).first

    if @previous_stock
      @new_quantity = @stock.quantity + @previous_stock.quantity
      @previous_stock.update(quantity: @new_quantity)
      redirect_to stocks_path
    elsif @stock.save
      redirect_to @stock, notice: 'Stock was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stocks/1
  def update
    if @stock.update(stock_params)
      redirect_to @stock, notice: 'Stock was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stocks/1
  def destroy
    @stock.destroy
    redirect_to stocks_url, notice: 'Stock was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.require(:stock).permit(:quantity, :vintage_id, :castle_id, :size)
    end
end
