class AddTranslationToScultures < ActiveRecord::Migration
  def up
    Sculture.create_translation_table!({technic: :string},{migrate_data: true})

  end

  def down
    Sculture.drop_translation_table! migrate_data: true
  end
end
