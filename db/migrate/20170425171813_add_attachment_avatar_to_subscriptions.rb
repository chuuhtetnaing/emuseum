class AddAttachmentAvatarToSubscriptions < ActiveRecord::Migration
  def self.up
    change_table :subscriptions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :subscriptions, :avatar
  end
end
