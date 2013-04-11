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
    @contractor = Contractor.new()
  end

  def join_us_create
    @contractor = Contractor.new(:first_name => params[:contractor][:first_name], 
                                 :last_name => params[:contractor][:last_name], 
                                 :phone_number => params[:contractor][:phone_number],
                                 :email_address => params[:contractor][:email_address])
    if @contractor.save
      JoinupMailer.join_email(@contractor, params[:description]).deliver
    end
  end

  def contact_us
  	@contactpage = Page.where(:title => "Contact Us").first
    @customer = Customer.new()
  end

  def contact_us_create
    @customer = Customer.new(:first_name => params[:customer][:first_name], 
                             :last_name => params[:customer][:last_name], 
                             :phone_number => params[:customer][:phone_number],
                             :email_address => params[:customer][:email_address])
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
