class CartProductsController < ApplicationController
  skip_before_filter :require_login
  
  before_action :set_cart_product, only: %i[ show edit update destroy ]
  # before_action :session[:user_id]!, except: [:index]
  
  helper_method :cart_price_total, :cart_price_total_wtax, :cart_products_count

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
    # if user is not logged_in
    if cart_product_params[:user_id].empty?
      session[:temp_cart] = cart_product_params
      redirect_to login_path, :notice => "Please log in, the product will be placed in your cart once you've logged in."
    else
      @cart_product = CartProduct.new(cart_product_params)
      respond_to do |format|
        if cart_product_params[:quantity].to_i > 0
          if @cart_product.save
            format.html { redirect_to request.referrer, notice: "Added to Cart. Please go to your cart to pay for your items!"  }
            format.json { render :show, status: :created, location: @cart_product }
              
            # Then remove from savedlist
            session[:savedlist] ||= []
            session[:savedlist].delete(cart_product_params[:product_id])
            
            # Then update popularity of product
            increase_product_popularity_by_product_id(cart_product_params[:product_id])
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @cart_product.errors, status: :unprocessable_entity }
          end
        else
          format.html { redirect_to request.referrer, notice: "Quantity cannot be 0 or less!." }
        end
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
      format.html { redirect_to cart_products_url, notice: "Item Removed from Cart" }
      format.json { head :no_content }
    end
  end
  
  # User checkout, destroy all specified user's products in their cart & update admin statistics
  def checkout
    respond_to do |format|
      CartProduct.all.each do |cart_product|
        if cart_product.user_id == logged_in
          # update admin statistics
          purchased_products_stats(cart_product.product_id, cart_product.quantity)
          
          # then destroy
          cart_product.destroy
        end
      end
      
      # add user feedback statistics for admin panel
      addToCustomerRatings(logged_in, params[:rating].to_i)
      
      format.html { redirect_to cart_products_url, notice: "Checkout successful." }
      format.json { head :no_content }
    end
  end
  
  # helper method - calculates the total price of all products in a user's cart
  def cart_price_total
    price = 0
    CartProduct.all.each do |cart_product|
      if cart_product.user_id == logged_in
        if product = get_product_by_id(cart_product.product_id)
          price += (product.price * cart_product.quantity) 
        end
      end
    end
    return price
  end

  # helper method - calculates the tax a user is required to pay
  def cart_price_total_wtax
    price = 0
    tax = 2.99
    CartProduct.all.each do |cart_product|
      if cart_product.user_id == logged_in
        if product = get_product_by_id(cart_product.product_id)
          price += (product.price * cart_product.quantity)  
        end
      end
    end
    return price + tax
  end
  
  # helper method - calculates the total count of products in a user's cart
  def cart_products_count
    count = 0
    CartProduct.all.each do |product|
      if product.user_id.to_s == logged_in.to_s
        count += 1
      end
    end
    return count
  end
   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_product
      @cart_product = CartProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_product_params
      params.require(:cart_product).permit(:product_id, :quantity, :size, :color, :user_id)
    end
    
    def get_feedback
      params[:feedback]
    end
end
