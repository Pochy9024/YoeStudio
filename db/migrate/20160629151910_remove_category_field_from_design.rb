class RemoveCategoryFieldFromDesign < ActiveRecord::Migration
  def change
    remove_column :designs, :category
  end
end
