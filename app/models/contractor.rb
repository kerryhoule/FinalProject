class Contractor < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number, :email_address, :picture_file
  has_many :invoices
  has_many :contractor_services
  has_many :services, :through => :contractor_services

  validates :first_name, :last_name, :phone_number, :email_address, :presence => true
  def name
  	self.first_name + " " + self.last_name
  end
end

