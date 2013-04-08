class AddIdsToContractorServices < ActiveRecord::Migration
  def change
    add_column :contractor_services, :contractor_id, :integer
    add_column :contractor_services, :service_id, :integer
  end
end
