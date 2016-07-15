class Photograph < ActiveRecord::Base

  translates :technic, fallbacks_for_empty_translations: true
  accepts_nested_attributes_for :translations, allow_destroy: true

  has_attached_file :image, styles: { medium: "450x450!", thumb: "100x100>", card: '1200x750!' },
                    :convert_options =>  {
                        :medium => "-normalize -quality 60  -interlace Plane",
                        :thumb => "-normalize -quality 50  -interlace Plane",
                        :card => "-normalize -quality 60  -interlace Plane"
                    },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  self.per_page = 6

  def positioning

    photos = Photograph.all.order(:position)


    photos.each do |photo|
      if photo.position >= self.position
        photo.update_attribute(:position, photo.position + 1)
      end
    end
  end

  before_create :positioning
end
