class ContactMailer < ActionMailer::Base
  	default :to => AdminUser.all.map(&:email),
  			:from => "system@prosynergy.ca"

  	def contact_email(new_customer, description)
  		@new_customer = new_customer
  		@description = description
		mail(:subject => "Someone wants to talk to us")
  	end
end
