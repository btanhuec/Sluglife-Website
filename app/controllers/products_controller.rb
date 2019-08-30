class ProductsController < ApplicationController
  def index # Need this
    @product = Product.order(created_at: :desc)
  end

  def new # Prob don't need this
    @product = Product.new
    @carted_item = @product.carted_item.build
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
    @carted_item = @product.carted_item.build
  end

  def destroy # Prob don't need this
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


  def update
  end


  private

  def post_params #prob don't need this
    params.require(:product).permit(:title, :description, carted_item_attributes: [:quantity, :size, :product_id])
  end

end
