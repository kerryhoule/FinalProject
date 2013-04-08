class AddIdsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :contractor_id, :integer
    add_column :invoices, :service_id, :integer
    add_column :invoices, :customer_id, :integer
  end
end
