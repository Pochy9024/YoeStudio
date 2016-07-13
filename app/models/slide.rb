class Slide < ActiveRecord::Base

  translates :title, :text, fallbacks_for_empty_translations: true
  accepts_nested_attributes_for :translations, allow_destroy: true

  has_attached_file :slide, styles: { medium: "1920x700!", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :slide, content_type: /\Aimage\/.*\Z/
end
