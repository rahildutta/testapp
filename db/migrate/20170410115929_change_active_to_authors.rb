class ChangeActiveToAuthors < ActiveRecord::Migration
  def change
    rename_column :authors, :Active, :active
  end
end
