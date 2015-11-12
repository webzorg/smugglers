class WelcomeController < ApplicationController
  def index
    @products = Product.discount
  end

  def contact
    render 'contact'
  end
end
