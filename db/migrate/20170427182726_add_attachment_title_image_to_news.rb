class AddAttachmentTitleImageToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :title_image
    end
  end

  def self.down
    remove_attachment :news, :title_image
  end
end
