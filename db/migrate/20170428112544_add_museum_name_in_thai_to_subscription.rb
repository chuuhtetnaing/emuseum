class AddMuseumNameInThaiToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :museum_name_in_thai, :string
  end
end
