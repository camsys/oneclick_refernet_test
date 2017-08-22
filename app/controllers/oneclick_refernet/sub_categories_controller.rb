module OneclickRefernet
  class SubCategoriesController < ApplicationController
    
    def index
      @category = Category.find_by(name: params[:category])
      
      render json: (@category.try(:sub_categories) || [])
    end
    
  end
end