class AddColumnCommentIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :comment_id, :integer
    end
  end
