class AddTranslationToPhotos < ActiveRecord::Migration
  def up
    Photograph.create_translation_table!({technic: :string},{migrate_data: true})

  end

  def down
    Photograph.drop_translation_table! migrate_data: true
  end
end
