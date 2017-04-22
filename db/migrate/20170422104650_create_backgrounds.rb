class CreateBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :backgrounds do |t|
      t.text :content

      t.timestamps
    end
  end
end
