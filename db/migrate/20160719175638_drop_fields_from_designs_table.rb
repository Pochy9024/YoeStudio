class DropFieldsFromDesignsTable < ActiveRecord::Migration
  def change
    remove_column :designs, :dimentions

    Design.drop_translation_table! migrate_data: true
  end
end
