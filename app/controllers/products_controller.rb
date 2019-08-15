class ProductsController < ApplicationController
  def index # Need this
    @product = Product.order(created_at: :desc)
  end

  def new # Prob don't need this
    @product = Product.new
  end

  def create# Prob don't need this
    @product = Product.new(post_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit# Prob don't need this
    @product = Product.find(params[:id])
  end

  def show #Shows the product page
    @product = Product.find(params[:id]) #finds the post by the ID
  end

  def destroy # Prob don't need this
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path

  end

  private

  def post_params #prob don't need this
    params.require(:product).permit(:title, :description)
  end

end
