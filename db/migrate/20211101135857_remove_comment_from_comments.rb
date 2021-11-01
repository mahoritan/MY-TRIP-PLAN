class RemoveCommentFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :comment, :text
    add_column :comments, :comment_text, :text
  end

end
