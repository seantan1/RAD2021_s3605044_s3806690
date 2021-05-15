class Product < ApplicationRecord
    
    def search_products
       products = Product.all
       products = products.where(["name LIKE?", "%#{keywords}%"]) if keywords.present?
       products = products.where(["category LIKE?", category]) if category.present?
       products = products.where(["size LIKE?", size]) if size.present?
       products = products.where(["color LIKE?", color]) if color.present?
       products = products.where(["description LIKE?", description]) if description.present?
       return products
    end
    
end
