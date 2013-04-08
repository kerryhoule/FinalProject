class HomeController < ApplicationController
  def index

  end

  def search
  	
  end

  def search_results
  	keywords = params[:keywords]
  	@customers = Customer.where("first_name LIKE ? OR last_name LIKE ?", "%#{keywords}%", "%#{keywords}%")
  end
end
