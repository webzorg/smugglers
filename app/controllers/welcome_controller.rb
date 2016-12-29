class WelcomeController < ApplicationController
  before_action :disable_navigation, only: [:locations]

  def index
    @products = Product.discount
  end

  def contact
    render "contact"
  end

  def locations
    render "locations"
  end
end
