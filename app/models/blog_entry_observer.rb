class BlogEntryObserver < ActiveRecord::Observer
  def after_create(blog_entry)
  	puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  	blog_entry.logger.info('New contact added!')
 	UserMailer.registration_confirmation(nil).deliver
  end
end
