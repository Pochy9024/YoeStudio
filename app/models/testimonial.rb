class Testimonial < ActiveRecord::Base

  translates :title, :text, fallbacks_for_empty_translations: true
  accepts_nested_attributes_for :translations, allow_destroy: true

  self.per_page = 10
end
