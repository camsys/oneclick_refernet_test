require 'spec_helper'

module OneclickRefernet
  RSpec.describe SubCategoriesController, type: :controller do
    routes { OneclickRefernet::Engine.routes }
    
    before(:each) { rand(1..5).times { create(:category, :with_sub_categories) } }

    it "returns sub-categories for a category" do
      get :index, params: { category: Category.first.name }
      expect(response).to be_success
      response_body = JSON.parse(response.body)
      
      sub_categories = Category.first.sub_categories
      expect(response_body.count).to eq(sub_categories.count)
      expect(response_body.map {|sc| sc["name"]}.sort).to eq(sub_categories.pluck(:name).sort)
    end

  end
end
