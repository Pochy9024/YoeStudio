class Painting < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "450x450!", thumb: "100x100>", card: '1200x750!' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  self.per_page = 6



  def positioning
    tasks = Painting.all.order(:position)
    increment = false
    tasks.each do |t|
      if !increment && t.position == self.position
        increment = true
        t.position += 1
        t.save
      elsif increment
        t.position += 1
        t.save
      end
    end
  end

  before_create :positioning

  def swap_position
    tasks = Painting.all.order(:position)
    tasks.each do |t|
      if t.position == self.position

        pos = t.position
        t.position = self.position
        self.position = pos

      end
    end
  end

  before_update :swap_position


end
