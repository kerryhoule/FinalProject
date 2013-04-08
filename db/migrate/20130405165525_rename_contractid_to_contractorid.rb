class RenameContractidToContractorid < ActiveRecord::Migration
  def up
  	rename_column :contractor_services, :contract_id, :contractor_id
  end

  def down
  	rename_column :contractor_services, :contract_id, :contractor_id
  end
end
