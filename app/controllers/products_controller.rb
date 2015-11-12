class ProductsController < ApplicationController

  def index
    @search = Product.search(params[:q])
    @products = @search.result.status.page(params[:page]).per(params[:per])
    @products = @products.giftbox if params[:giftbox].present?
    @products = @products.category(params[:category]) if params[:category].present?
  end

  def show
    @product = Product.find(params[:id])
  end

end
