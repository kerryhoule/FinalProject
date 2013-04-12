class HomeController < ApplicationController
  def index
    @indexpage = Page.where(:title => "Home").first
  end

  def investments
    @investmentpage = Page.where(:title => "Investments").first
  end

  def insurance
    @insurancepage = Page.where(:title => "Insurance").first
  end

  def mortgages
    @mortgagepage = Page.where(:title => "Mortgages").first
  end

  def homeequity
    @homeequitypage = Page.where(:title => "Home Equity").first
  end

  def autofinance
    @autofinancepage = Page.where(:title => "Auto Finance").first
  end

  def realestate
    @realestatepage = Page.where(:title => "Real Estate").first
  end

  def debtconsolidation
    @debtconsolidationpage = Page.where(:title => "Debt Consolidation").first
  end

  def join_us
    @joinpage = Page.where(:title => "Join Us").first
  	@contractors = Contractor.all
    @contractor = Contractor.new()
  end

  def join_us_create
    @contractor = Contractor.new(params[:contractor])
    if @contractor.save
      JoinupMailer.join_email(@contractor, params[:description]).deliver
      redirect_to join_us_path
    end
  end

  def contact_us
  	@contactpage = Page.where(:title => "Contact Us").first
    @customer = Customer.new()
  end

  def contact_us_create
    @customer = Customer.new(params[:customer])
    if @customer.save
      ContactMailer.contact_email(@customer, params[:description]).deliver
      redirect_to contact_us_path
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
