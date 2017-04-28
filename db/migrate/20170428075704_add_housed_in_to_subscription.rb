class AddHousedInToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :housed_in, :string
  end
end
