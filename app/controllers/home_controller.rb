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
  	@contractors = Contractor.all
    @contractor = Contractor.new(params[:contractor])
    if @contractor.save
      JoinupMailer.join_email(@contractor, params[:description]).deliver
    end
  end

  def contact_us
  	@contactpage = Page.where(:title => "Contact Us").first
    @customer = Customer.new(params[:customer])
    if @customer.save
      ContactMailer.contact_email(@customer, params[:description]).deliver
    end
  end

  def about_us
  	@aboutpage = Page.where(:title => "About Us").first
  end

  def search_results
  	keywords = params[:keywords]
  	@contractors = Contractor.where("first_name LIKE ? OR last_name LIKE ?", "%#{keywords}%", "%#{keywords}%")
  	@services = Service.where("service_name LIKE ?", "%#{keywords}%")
  end
end
