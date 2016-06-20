class AddAttachmentSlideToSlides < ActiveRecord::Migration
  def self.up
    change_table :slides do |t|
      t.attachment :slide
    end
  end

  def self.down
    remove_attachment :slides, :slide
  end
end
