class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: [:index, :show]

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
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category, notice: "Category was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_url, notice: "Category was successfully destroyed."
  end

  def searchcategory
    @categories = Category.where("name LIKE ?", "%" + params[:q] + "%")
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
    if !(current_user.admin?)
      redirect_to categories_path, alert: "Only admins can perform that action"
    end
  end
end
