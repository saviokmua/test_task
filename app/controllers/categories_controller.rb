class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.page params[:page]
  end

  def show
  end

  private

  def set_category
    @category = Category.find(params[:id]) or redirect_to error404_path
  end

end
