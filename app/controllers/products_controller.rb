class ProductsController < ApplicationController
  skip_before_filter :require_login
  helper_method :calculate_days_ago, :is_new_in
  
  # GET /products
  def index
    @all_products = Product.all
    session[:savedlist] ||= []
    
    # filter functions for product page filter
    if params[:category]
      if params[:category].length == 3
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
        .or(Product.where(["category LIKE ?", "%#{params[:category][1]}%"]))
        .or(Product.where(["category LIKE ?", "%#{params[:category][2]}%"]))
      elsif params[:category].length == 2
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
        .or(Product.where(["category LIKE ?", "%#{params[:category][1]}%"]))
      else
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
      end
    end
    
    if params[:color]
      if params[:color].length == 3
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
        .or(Product.where(["color LIKE ?", "%#{params[:color][1]}%"]))
        .or(Product.where(["color LIKE ?", "%#{params[:color][2]}%"]))
      elsif params[:color].length == 2
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
        .or(Product.where(["color LIKE ?", "%#{params[:color][1]}%"]))
      else
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
      end
    end
    
    if params[:size]
      @all_products = @all_products.where(["size LIKE ?", "%#{params[:size]}%"])
    end
  end
  
  # POST /search - search function for the search bar on nav
  def search
    @all_products = Product.where(["name LIKE ?", "%#{params[:search]}%"])
    .or(Product.where(["category LIKE ?", "%#{params[:search]}%"]))
    .or(Product.where(["size LIKE ?", "%#{params[:search]}%"]))
    .or(Product.where(["color LIKE ?", "%#{params[:search]}%"]))
    .or(Product.where(["description LIKE ?", "%#{params[:search]}%"]))
  end
  
  # GET /products/new
  def new
    @product = Product.new
    # @categories = Product.uniq.pluck(:category)
  end
  
  # GET /products/:id
  def show
    @product = Product.find(params[:id])
  end
  
  # GET /products/category/:id
  def category
    men_category = "men"
    women_category = "women"
    kids_category = "kids"
    new_ins_category = "new-ins"
    
    if params[:id] == men_category
      @category_products = filter_products(Product.all, men_category)
    end
    if params[:id] == women_category
      @category_products = filter_products(Product.all, women_category)
    end
    if params[:id] == kids_category
      @category_products = filter_products(Product.all, kids_category)
    end
    if params[:id] == new_ins_category
      @category_products = filter_new_ins(Product.all)
    end
  end
  
  # GET /products/:id/edit
  def edit
    @product = Product.find(params[:id])
  end
  
  # GET /products/seeAllProducts
  def seeAllProducts
    @all_products = Product.all
    
    # filter function
    if params[:category]
      if params[:category].length == 3
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
        .or(Product.where(["category LIKE ?", "%#{params[:category][1]}%"]))
        .or(Product.where(["category LIKE ?", "%#{params[:category][2]}%"]))
      elsif params[:category].length == 2
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
        .or(Product.where(["category LIKE ?", "%#{params[:category][1]}%"]))
      else
        @all_products = Product.where(["category LIKE ?", "%#{params[:category][0]}%"])
      end
    end
    
    if params[:color]
      if params[:color].length == 3
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
        .or(Product.where(["color LIKE ?", "%#{params[:color][1]}%"]))
        .or(Product.where(["color LIKE ?", "%#{params[:color][2]}%"]))
      elsif params[:color].length == 2
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
        .or(Product.where(["color LIKE ?", "%#{params[:color][1]}%"]))
      else
        @all_products = @all_products.where(["color LIKE ?", "%#{params[:color][0]}%"])
      end
    end
    
    if params[:size]
      @all_products = @all_products.where(["size LIKE ?", "%#{params[:size]}%"])
    end
  end
  
  # POST method of creating product
  def create
    respond_to do |format|
      @product = Product.create(product_params)
      if @product.save 
       format.html{ redirect_to products_path, notice: "Product created!" }
       format.json { head :no_content }
      else 
        format.html{ redirect_to products_path, notice: "Product was not created!" }
        format.json { head :no_content }
      end
    end
  end
  
  # POST method of updating product
  def update
    respond_to do |format|
      @product = Product.find(params[:id])
      @product = @product.update(product_params)
      if @product
        format.html{ redirect_to products_path, notice: "Product was successfully updated!" }
        format.json { head :no_content }
      else
        format.html{ redirect_to products_path, notice: "Product was not updated!" }
        format.json { head :no_content }
      end
    end
  end
  
  # DELETE method
  def destroy
    Product.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to products_path, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  # helper function - calculate the number of days since arrival
  def calculate_days_ago(product)
    return (DateTime.now - product.arrival.to_datetime).to_i
  end
    
  # helper function - boolean if product arrival is > 30 days
  def is_new_in(product)
    return true unless calculate_days_ago(product) >= 30
  end
  
  
 private
  #allowed list of params for user model 
  def product_params
    params.require(:product).permit(:name, :image, :price, :category, :popularity, :size, :color, :stockcount, :arrival, :description )
  end
  
  # def search_params
  #   params.require(:product).permit(:keywords, :category, :size, :color, :description)
  # end
  # def autocomplete
  #     search_term = params[:search]
  #     @results = Product.where("name like ?", "%" + search_term + "%").all
  #     respond_to do |format|
  #       format.json @results
  #     end
  # end
    
  # filter products to a specific category keyword
  def filter_products(products, target_category)
    filtered_products = []
    
    products.each do |product|
      if product.category.to_s == target_category
        filtered_products.push(product)
      end
    end
    return filtered_products
  end
  
  # filter new produts (<30 days arrival)
  def filter_new_ins(products)
    filtered_products = []
    products.each do |product|
      if is_new_in(product)
        filtered_products.push(product)
      end
    end
    return filtered_products
  end
 
  
end
