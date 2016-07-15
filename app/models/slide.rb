class Slide < ActiveRecord::Base

  translates :title, :text, fallbacks_for_empty_translations: true
  accepts_nested_attributes_for :translations, allow_destroy: true

  has_attached_file :slide, styles: { medium: "1920x700!", thumb: "100x100>" },
                    :convert_options =>  {
                        :medium => "-normalize -quality 60  -interlace Plane",
                        :thumb => "-normalize -quality 50  -interlace Plane",
                        :card => "-normalize -quality 60  -interlace Plane"
                    },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :slide, content_type: /\Aimage\/.*\Z/
end
