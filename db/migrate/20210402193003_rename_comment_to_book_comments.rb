class RenameCommentToBookComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :book_comments, :comment, :bo
  end
end
