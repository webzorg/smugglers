class ProductsController < ApplicationController

  def index
    @products = Product.status(true).page(params[:page]).per(params[:per])
    @products = @products.giftbox(params[:giftbox]) if params[:giftbox].present?
  end

  def show
    @product = Product.find(params[:id])
  end

end
