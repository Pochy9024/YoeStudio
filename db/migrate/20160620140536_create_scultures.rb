class CreateScultures < ActiveRecord::Migration
  def change
    create_table :scultures do |t|
      t.text :title
      t.string :technic
      t.string :dimentions
      t.integer :year

      t.timestamps null: false
    end
  end
end
