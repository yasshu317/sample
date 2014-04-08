class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :published, :title, :category_ids

  scope :yash, -> { where("content IS NOT NULL") }

  has_many :blog_entry_categories
  has_many :categories, :through => :blog_entry_categories
 
  validates :blog_entry_categories, :presence => {:message => 'sumit'}

end
