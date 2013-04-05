class Customer < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :phone_number
  has_many :invoices
end
