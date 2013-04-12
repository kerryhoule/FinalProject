class HomeController < ApplicationController
  def index
    @indexpage = Page.find(5)
  end

  def investments
    @investmentpage = Page.find(6)
  end

  def insurance
    @insurancepage = Page.find(7)
  end

  def mortgages
    @mortgagepage = Page.find(8)
  end

  def homeequity
    @homeequitypage = Page.find(9)
  end

  def autofinance
    @autofinancepage = Page.find(10)
  end

  def realestate
    @realestatepage = Page.find(11)
  end

  def debtconsolidation
    @debtconsolidationpage = Page.find(12)
  end

  def join_us
    @joinpage = Page.find(13)
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
  	@contactpage = Page.find(4)
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
  	@aboutpage = Page.find(3)
  end

  def search_results
  	keywords = params[:keywords]
  	@contractors = Contractor.where("first_name LIKE ? OR last_name LIKE ?", "%#{keywords}%", "%#{keywords}%")
  	@services = Service.where("service_name LIKE ?", "%#{keywords}%")
  end
end
