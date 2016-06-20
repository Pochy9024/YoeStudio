class AddAttachmentImageToDraws < ActiveRecord::Migration
  def self.up
    change_table :draws do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :draws, :image
  end
end
