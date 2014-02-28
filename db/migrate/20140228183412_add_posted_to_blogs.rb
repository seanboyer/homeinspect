class AddPostedToBlogs < ActiveRecord::Migration
  def change
  	add_column :blogs, :posted, :boolean
  end
end
