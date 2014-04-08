class Category < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :blog_entry_categories
  has_many :blog_entries, :through => :blog_entry_categories

end
