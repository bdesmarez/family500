class AddFamilyNameToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :family_name, :string
  end
end
