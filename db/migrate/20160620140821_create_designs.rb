class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.text :title
      t.string :technic
      t.string :dimentions
      t.integer :year
      t.string :category

      t.timestamps null: false
    end
  end
end
