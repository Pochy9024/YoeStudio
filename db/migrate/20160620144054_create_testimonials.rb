class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :title
      t.text :text
      t.string :author

      t.timestamps null: false
    end
  end
end
