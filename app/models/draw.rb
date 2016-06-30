class Draw < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "450x450!", thumb: "100x100>", card: '1200x750!' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  self.per_page = 6

  def positioning

    draws = Draw.all.order(:position)


    draws.each do |draw|
      if draw.position >= self.position
        draw.update_attribute(:position, draw.position + 1)
      end
    end
  end

  before_create :positioning
end
