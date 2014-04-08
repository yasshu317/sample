class CreateBlogEntryCategories < ActiveRecord::Migration
  def change
    create_table :blog_entry_categories do |t|
      t.integer :category_id
      t.integer :blog_entry_id

      t.timestamps
    end
  end
end
