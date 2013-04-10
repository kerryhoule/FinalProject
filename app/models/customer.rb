class Customer < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :phone_number
  has_many :invoices

  validates :email_address, :first_name, :last_name, :phone_number, :presence => true
  def name
  	self.first_name + " " + self.last_name
  end
end
