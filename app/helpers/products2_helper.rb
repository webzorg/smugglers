module Products2Helper
  def giftbox
    params[:giftbox] && params[:giftbox].include?("true")
  end

  def category
  	array = Product.uniq.pluck(:category)
  	array.shift
  	return array
  end

  
end
