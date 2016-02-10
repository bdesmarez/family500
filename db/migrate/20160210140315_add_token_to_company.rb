class AddTokenToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :token, :string

    Company.find_each do |company|
      company.token = Digest::MD5.hexdigest "#{SecureRandom.hex(10)}-#{DateTime.now.to_s}"
      company.save
    end
  end
end
