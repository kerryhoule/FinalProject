class Contractor < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number
  has_many :invoices
  has_many :contractor_services
  has_many :services, :through => :contractor_services

  def name
  	self.first_name + " " + self.last_name
  end
end

