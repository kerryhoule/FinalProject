class Service < ActiveRecord::Base
  attr_accessible :service_cost, :service_description, :service_name
  has_many :invoices
  has_many :contractor_services
  has_many :contractors, :through => :contractor_services
end
