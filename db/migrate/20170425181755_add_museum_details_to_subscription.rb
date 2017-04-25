class AddMuseumDetailsToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :detail, :text
  end
end
