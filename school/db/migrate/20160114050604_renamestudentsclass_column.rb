class RenamestudentsclassColumn < ActiveRecord::Migration
  def change
  rename_column :students, :class, :class_ch
  end
end
