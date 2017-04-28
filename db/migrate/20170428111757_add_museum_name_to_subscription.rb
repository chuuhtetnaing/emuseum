class AddMuseumNameToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :museum_name, :string
  end
end
