class BlogEntryCategory < ActiveRecord::Base
  attr_accessible :blog_entry_id, :category_id

  belongs_to :blog_entry
  belongs_to :category
end
