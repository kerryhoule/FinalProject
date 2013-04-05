class CreateContractorServices < ActiveRecord::Migration
  def change
    create_table :contractor_services do |t|

      t.timestamps
    end
  end
end
