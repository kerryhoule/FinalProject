class AddPictureFileToContractors < ActiveRecord::Migration
  def change
    add_column :contractors, :picture_file, :string
  end
end
