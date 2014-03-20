class FoodStocksController < ApplicationController
  before_action :set_food_stock, only: [:show, :edit, :update, :destroy]

  # GET /food_stocks
  # GET /food_stocks.json
  def index
    @food_stocks = FoodStock.all
  end

  # GET /food_stocks/1
  # GET /food_stocks/1.json
  def show
  end

  # GET /food_stocks/new
  def new
    @food_stock = FoodStock.new
  end

  # GET /food_stocks/1/edit
  def edit
  end

  # POST /food_stocks
  # POST /food_stocks.json
  def create
    @food_stock = FoodStock.new(food_stock_params)

    respond_to do |format|
      if @food_stock.save
        format.html { redirect_to '/food_stocks', notice: 'Food stock was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_stock }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_stocks/1
  # PATCH/PUT /food_stocks/1.json
  def update
    respond_to do |format|
      if @food_stock.update(food_stock_params)
        format.html { redirect_to @food_stock, notice: 'Food stock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_stocks/1
  # DELETE /food_stocks/1.json
  def destroy
    @food_stock.destroy
    respond_to do |format|
      format.html { redirect_to food_stocks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_stock
      @food_stock = FoodStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_stock_params
      params.require(:food_stock).permit(:food_id, :user_id, :quantity)
    end
end
