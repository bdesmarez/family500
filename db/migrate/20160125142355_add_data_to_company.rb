class AddDataToCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :long_description
    add_column :companies, :family_business, :boolean
    add_column :companies, :alias, :string
    add_column :companies, :website, :string
    add_column :companies, :branch, :string
    add_column :companies, :creation_date, :datetime
    add_column :companies, :postal_code, :integer
    add_column :companies, :city, :string
    add_column :companies, :street, :string
    add_column :companies, :phone, :string
    add_column :companies, :mobile, :string
    add_column :companies, :fax, :string
    add_column :companies, :email, :string
  end
end
