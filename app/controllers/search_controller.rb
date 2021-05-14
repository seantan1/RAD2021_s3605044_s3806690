class SearchController < ApplicationController
    def autocomplete
      search_term = params[:search]
      @results = YourModel.where( "your_field LIKE search_term" )
      respond_to do |format|
        format.json @results
      end
    end
end