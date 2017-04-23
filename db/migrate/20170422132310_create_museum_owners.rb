class CreateMuseumOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :museum_owners do |t|
      t.integer :subscription_id
      t.string :username
      t.string :password
      t.string :org_name_eng
      t.string :email_address
      t.string :current_website
      t.boolean :blocked, default: false
      t.timestamps
    end
  end
end
