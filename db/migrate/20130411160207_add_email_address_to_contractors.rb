class AddEmailAddressToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :email_address, :string
  end
end
