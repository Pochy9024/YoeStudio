class DropTechnicFromDesignTable < ActiveRecord::Migration
  def change
    remove_column :designs, :technic
  end
end
