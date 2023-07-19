class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path, notice:"Done!"
    else
      render:new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    @product = Product.find_by(product_params)
    if @product.update
      redirect_to root_path, notice:"Update done!"
    else
      render:edit
    end
  end
  
  def destroy
    @product.destroy
    redirect_to root_path, notice:"Delete!"
  end

  private
  def product_params
    params.require(:product).permit(:title, :abstract, :num_pages, :price)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end

end
