class JavascriptsController < ApplicationController

	def dynamic_states
		@products = Products.find(:all)
	end

end
