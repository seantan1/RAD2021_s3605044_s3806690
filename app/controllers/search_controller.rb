class SearchController < ApplicationController
    def autocomplete
      search_term = params[:search]
      @results = Product.where("name like ?", "%" + search_term + "%").all
      respond_to do |format|
        format.json @results
      end
    end
end