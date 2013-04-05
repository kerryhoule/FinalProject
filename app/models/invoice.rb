class Invoice < ActiveRecord::Base
  attr_accessible :company_cut
  belongs_to :customer
  belongs_to :service
  belongs_to :contractor
end
