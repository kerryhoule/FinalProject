class ContractorService < ActiveRecord::Base
  attr_accessible :contractor_id, :service_id
  belongs_to :contractor
  belongs_to :service
end
