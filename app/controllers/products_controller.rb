class ProductsController < ApplicationController
  def index
    @product = Product.order(created_at: :desc)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(post_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id]) #finds the post by the ID
  end


  private

  def post_params
    params.require(:product).permit(:title, :description)
  end

end
