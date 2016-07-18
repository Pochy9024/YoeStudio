class AddTranslationToSlides < ActiveRecord::Migration
  def up
    Slide.create_translation_table!({title: :string, text: :text},{migrate_data: true})

  end

  def down
    Slide.drop_translation_table! migrate_data: true
  end
end
