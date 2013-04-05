class ContractorService < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :contractor
  belongs_to :service
end
