class CategoriesController < ApplicationController
  def index
  	redirect_to "/"
  end

  def show
  	@category = Category.find(params[:id])
  end
end
