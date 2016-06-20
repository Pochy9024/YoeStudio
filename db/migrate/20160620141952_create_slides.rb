class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.text :title
      t.text :text

      t.timestamps null: false
    end
  end
end
