class HomeController < ApplicationController
  def index

  end

  def investments

  end

  def insurance

  end

  def mortgages

  end

  def homeequity

  end

  def autofinance

  end

  def realestate

  end

  def debtconsolidation

  end

  def join_us

  end

  def contact_us
  	@contactpage = Page.where(:title => "Contact Us").first
  end

  def about_us
  	@aboutpage = Page.where(:title => "About Us").first
  end

  def search_results
  	keywords = params[:keywords]
  	@customers = Customer.where("first_name LIKE ? OR last_name LIKE ?", "%#{keywords}%", "%#{keywords}%")
  	@contractors = Contractor.where("first_name LIKE ? OR last_name LIKE ?", "%#{keywords}%", "%#{keywords}%")
  	@services = Service.where("service_name LIKE ?", "%#{keywords}%")
  end
end
