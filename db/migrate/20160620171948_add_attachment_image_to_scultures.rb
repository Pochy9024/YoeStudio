class AddAttachmentImageToScultures < ActiveRecord::Migration
  def self.up
    change_table :scultures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :scultures, :image
  end
end
