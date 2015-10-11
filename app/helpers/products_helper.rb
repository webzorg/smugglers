module ProductsHelper
  def giftbox(giftbox_var)
    params[:giftbox] && params[:giftbox].include?(giftbox_var)
  end

  def filterActive(giftbox_var)
    return "active" if params[:giftbox] && params[:giftbox].include?(giftbox_var)
  end
end
