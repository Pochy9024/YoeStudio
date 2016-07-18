class AddTranslationToDraws < ActiveRecord::Migration
  def up
    Draw.create_translation_table!({technic: :string},{migrate_data: true})

  end

  def down
    Draw.drop_translation_table! migrate_data: true
  end
end
