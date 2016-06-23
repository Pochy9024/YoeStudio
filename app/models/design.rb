class Design < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "450x450>", thumb: "100x100>", card: '1200x750>' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
