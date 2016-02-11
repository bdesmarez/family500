class AddInovationToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :inovation, :boolean
  end
end
