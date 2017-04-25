class AddDivisionIdToSubscription < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :division_id, :integer
  end
end
