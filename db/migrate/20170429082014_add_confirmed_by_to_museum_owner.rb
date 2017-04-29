class AddConfirmedByToMuseumOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :museum_owners, :ConfirmedBy, :integer
  end
end
