class Design < ActiveRecord::Base



  validates_presence_of :position

  has_attached_file :image, :styles => {:medium => '450x450!', :thumb => '100x100>', :card => '1200x750^' },
                    :convert_options =>  {
                                  :medium => "-normalize -quality 60  -interlace Plane",
                                  :thumb => "-normalize -quality 50  -interlace Plane",
                                  :card => "-normalize -quality 60  -interlace Plane  -gravity Center -crop 1200x750+0+0 -resize 1200x750^"
                          },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  self.per_page = 6

  def positioning

    designs = Design.all.order(:position)


    designs.each do |design|
      if design.position >= self.position
        design.update_attribute(:position, design.position + 1)
      end
    end
  end

  before_create :positioning
end
