class UserMailer < ActionMailer::Base
  default from: "yaswanth4urs@gmail.com"
  
  def registration_confirmation(user=nil)
    attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail(:to => "Yaswanth Kakarla <yaswanth4urs@gmail.com>", :subject => "Registered")
  end
end
