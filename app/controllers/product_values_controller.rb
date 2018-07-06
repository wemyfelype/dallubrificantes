class ProductValuesController < ApplicationController
  before_action :set_product_value, only: [:show, :edit, :update, :destroy]

  # GET /product_values
  # GET /product_values.json
  def index
    @product_values = ProductValue.all
  end

  # GET /product_values/1
  # GET /product_values/1.json
  def show
  end

  # GET /product_values/new
  def new
    @products = Product.all
    @product_value = ProductValue.new
  end

  # GET /product_values/1/edit
  def edit
    @products = Product.all
  end

  # POST /product_values
  # POST /product_values.json
  def create
    
    @product_value = ProductValue.new(product_value_params)

    respond_to do |format|
      if @product_value.save
        format.html { redirect_to @product_value, notice: 'Product value was successfully created.' }
        format.json { render :show, status: :created, location: @product_value }
      else
        format.html { render :new }
        format.json { render json: @product_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_values/1
  # PATCH/PUT /product_values/1.json
  def update
    
    respond_to do |format|
      if @product_value.update(product_value_params)
        format.html { redirect_to @product_value, notice: 'Product value was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_value }
      else
        format.html { render :edit }
        format.json { render json: @product_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_values/1
  # DELETE /product_values/1.json
  def destroy
    
    #@product_value.destroy

    @product_value.fl_status = "I"
    @product_value.save 
    
    respond_to do |format|
      format.html { redirect_to product_values_url, notice: 'Product value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_value
      @product_value = ProductValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_value_params
      params.require(:product_value).permit(:qt_stock, :vl_purchase_uni, :vl_sale_uni, :fl_status, :product_id)
    end
end
