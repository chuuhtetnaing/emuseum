class CreateUnblockEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :unblock_emails do |t|
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
