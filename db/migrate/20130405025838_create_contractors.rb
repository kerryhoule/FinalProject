class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number

      t.timestamps
    end
  end
end
