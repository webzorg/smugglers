class ProductsController < ApplicationController

  def index
    @products = Admin::Product.all
  end

  def show
  end
end
