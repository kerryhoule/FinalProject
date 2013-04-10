class Invoice < ActiveRecord::Base
  attr_accessible :company_cut, :customer_id, :service_id, :contractor_id
  belongs_to :customer
  belongs_to :service
  belongs_to :contractor
  validates :company_cut, :customer_id, :service_id, :contractor_id, :presence => true
end
