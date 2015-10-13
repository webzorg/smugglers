module ProductsHelper
  def giftbox
    params[:giftbox] && params[:giftbox].include?("true")
  end

  def filterActive
    return "active" if params[:giftbox] && params[:giftbox].include?("true")
  end
end
