class RenameFamilyToCompany < ActiveRecord::Migration
  def change
    rename_table :families, :companies
  end
end
