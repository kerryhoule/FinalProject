class ContactMailer < ActionMailer::Base
  	default from: "system@prosynergy.ca"

  	def contact_email(new_customer, description)
  		@new_customer = new_customer
  		@description = description
  		#@admins = AdminUser.all
  		#@admins.each do |admin|
			mail(:to => 'stungeye@gmail.com', :subject => "Someone wants to talk to us")
		#end
  	end
end
