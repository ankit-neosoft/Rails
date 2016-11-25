class AddTermsOfServiceToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :terms_of_service, :boolean
  end
end
