class RenameMailByEmailToContact < ActiveRecord::Migration
  def change
    rename_column :contacts, :mail, :email
  end
end
