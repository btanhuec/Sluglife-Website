class CartedItemsController < ApplicationController

  def index # Prob don't need this
    @carted_item = CartedItem.order(created_at: :desc)
  end

  def new # Prob don't need this
    @carted_item = CartedItem.new
  end

  def create# Prob don't need this
    @carted_item = CartedItem.new(post_params)
    if @carted_item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit# Prob don't need this
    @carted_item = CartedItem.find(params[:id])
  end

  private
  def post_params
    params.require(:carteditem).permit(:quantity, :size, :product_id)
  end

end
