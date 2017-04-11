class AddNoOfBooksPublishedToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :no_of_books_published, :integer
  end
end
