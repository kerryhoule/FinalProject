class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.decimal :company_cut

      t.timestamps
    end
  end
end
