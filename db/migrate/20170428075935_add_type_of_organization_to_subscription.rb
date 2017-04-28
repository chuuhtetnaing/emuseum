class AddTypeOfOrganizationToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :type_of_organization, :string
  end
end
