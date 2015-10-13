class ProductsController < ApplicationController

  def index
    @search = Product.search(params[:q])
    @products = @search.result.status(true).page(params[:page]).per(params[:per])
    @products = @products.giftbox(params[:giftbox]) if params[:giftbox].present?
  end

  def show
    @product = Product.find(params[:id])
  end

end
