class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :author, index: true
      t.string :name
      t.string :author
      t.integer :price

      t.timestamps null: false
    end
  end
end
