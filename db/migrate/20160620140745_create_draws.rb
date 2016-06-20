class CreateDraws < ActiveRecord::Migration
  def change
    create_table :draws do |t|
      t.text :title
      t.string :technic
      t.string :dimentions
      t.integer :year

      t.timestamps null: false
    end
  end
end
