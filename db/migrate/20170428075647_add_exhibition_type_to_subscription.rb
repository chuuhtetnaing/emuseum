class AddExhibitionTypeToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :exhibition_type, :string
  end
end
