module OneclickRefernet
  class CategoriesController < ApplicationController
    
    def index
      @locale = params[:locale] || I18n.default_locale
      render json: Category.confirmed, scope: { locale: @locale, lat: params[:lat], lng: params[:lng], meters: ((params[:meters] || 48280.3).to_f) }
    end
    
  end
end
