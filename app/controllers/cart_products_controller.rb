class CartProductsController < ApplicationController
  before_action :set_cart_product, only: %i[ show edit update destroy ]
  # before_action :session[:user_id]!, except: [:index]
  
  helper_method :cart_price_total

  # GET /cart_products or /cart_products.json
  def index
    @cart_products = CartProduct.all
  end

  # GET /cart_products/1 or /cart_products/1.json
  def show
  end

  # GET /cart_products/new
  def new
    @cart_product = CartProduct.new
  end

  # GET /cart_products/1/edit
  def edit
  end

  # POST /cart_products or /cart_products.json
  def create
    @cart_product = CartProduct.new(cart_product_params)

    respond_to do |format|
      if cart_product_params[:quantity].to_i > 0
        if @cart_product.save
          format.html { redirect_to request.referrer, notice: "Cart product was successfully created." }
          format.json { render :show, status: :created, location: @cart_product }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @cart_product.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to request.referrer, notice: "Quantity cannot be 0 or less!." }
      end
    end
  end

  # PATCH/PUT /cart_products/1 or /cart_products/1.json
  def update
    respond_to do |format|
      if cart_product_params[:quantity].to_i > 0
        if @cart_product.update(cart_product_params)
          format.html { redirect_to request.referrer, notice: "Cart product was successfully updated." }
          format.json { render :show, status: :ok, location: @cart_product }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @cart_product.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to request.referrer, notice: "Quantity cannot be 0 or less!." }
      end
    end
  end

  # DELETE /cart_products/1 or /cart_products/1.json
  def destroy
    @cart_product.destroy
    respond_to do |format|
      format.html { redirect_to cart_products_url, notice: "Cart product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def cart_price_total
    price = 0
    CartProduct.all.each do |cart_product|
      if cart_product.user_id == logged_in
        if product = get_product_by_id(cart_product.product_id)
          price += product.price * cart_product.quantity
        end
      end
    end
    return price
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_product
      @cart_product = CartProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_product_params
      params.require(:cart_product).permit(:product_id, :quantity, :user_id)
    end
end
