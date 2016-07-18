class AddTranslationTableToPaintings < ActiveRecord::Migration
  def up
    Painting.create_translation_table!({technic: :string},{migrate_data: true})

  end

  def down
    Painting.drop_translation_table! migrate_data: true
  end
end
