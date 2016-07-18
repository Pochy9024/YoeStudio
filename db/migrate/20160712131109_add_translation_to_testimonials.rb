class AddTranslationToTestimonials < ActiveRecord::Migration
  def up
    Testimonial.create_translation_table!({title: :string, text: :text},{migrate_data: true})

  end

  def down
    Testimonial.drop_translation_table! migrate_data: true
  end
end
