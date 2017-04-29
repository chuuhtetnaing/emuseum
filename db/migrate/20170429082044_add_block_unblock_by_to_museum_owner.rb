class AddBlockUnblockByToMuseumOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :museum_owners, :BlockUnblockBy, :integer
  end
end
