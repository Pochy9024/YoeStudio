class AddTranslationToDesigns < ActiveRecord::Migration
  def up
    Design.create_translation_table!({technic: :string},{migrate_data: true})

  end

  def down
    Design.drop_translation_table! migrate_data: true
  end
end
