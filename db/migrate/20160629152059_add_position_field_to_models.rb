class AddPositionFieldToModels < ActiveRecord::Migration
  def change
    add_column :paintings, :position, :integer
    add_column :scultures, :position, :integer
    add_column :draws, :position, :integer
    add_column :designs, :position, :integer
    add_column :photographs, :position, :integer
  end
end
