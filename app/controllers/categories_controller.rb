class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "Category was successfully created."
    else
      render 'new'
    end
  end
  
  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category, notice: "Topic was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
