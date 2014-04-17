class NotificationObserver < ActiveRecord::Observer
	observe :blog_entry

  def before_save
  	puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
 	UserMailer.registration_confirmation(nil).deliver
  end

end
