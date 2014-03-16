class AddUserIdToBlogs < ActiveRecord::Migration
  def change
  	add_column :blogs, :user_id, :integer
    add_index  :blogs, :user_id
  end
end
