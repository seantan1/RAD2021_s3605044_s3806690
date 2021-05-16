class ProductsController < ApplicationController
  skip_before_filter :require_login
  helper_method :calculate_days_ago, :is_new_in
  
  def index
    @all_products = Product.all
    
  end
  
  def search
    # respond_to do |format|
      # format.html{ redirect_to search_page_path }
      if params[:search].blank?  
        # redirect_to(root_path, alert: "Empty field!") and return  
      else  
        @search_products = Product.where(["name LIKE ?", "%#{params[:search]}%"])
          .or(Product.where(["category LIKE ?", "%#{params[:search]}%"]))
          .or(Product.where(["size LIKE ?", "%#{params[:search]}%"]))
          .or(Product.where(["color LIKE ?", "%#{params[:search]}%"]))
          .or(Product.where(["description LIKE ?", "%#{params[:search]}%"]))
          session[:savedlist] ||= []
      end 
    # end
  end
  
  def new
    @product = Product.new
    # @categories = Product.uniq.pluck(:category)
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
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
  

  
  def edit
    @product = Product.find(params[:id])
  end
  
  def seeAllProducts
    @all_products = Product.all
  end
  
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
  
  def destroy
    Product.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to products_path, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def calculate_days_ago(product)
    return (DateTime.now - product.arrival.to_datetime).to_i
  end
    
  def is_new_in(product)
    return true unless calculate_days_ago(product) >= 30
  end
  
  
 private
  #allowed list of params for user model 
  def product_params
    params.require(:product).permit(:name, :image, :price, :category, :popularity, :size, :color, :stockcount, :arrival, :description)
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
    
  def filter_products(products, target_category)
    filtered_products = []
    
    products.each do |product|
      if product.category.to_s == target_category
        filtered_products.push(product)
      end
    end
    return filtered_products
  end
  
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
