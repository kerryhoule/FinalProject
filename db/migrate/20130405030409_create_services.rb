class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.decimal :service_cost
      t.text :service_description

      t.timestamps
    end
  end
end
