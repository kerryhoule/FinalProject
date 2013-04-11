class JoinupMailer < ActionMailer::Base
  	default from: "system@prosynergy.ca"

  	def join_email(new_contractor, description)
  		@new_contractor = new_contractor
  		@description = description
  		#@admins = AdminUser.all
  		#@admins.each do |admin|
			mail(:to => 'stungeye@gmail.com', :subject => "Someone wants to talk to us")
		#end
  	end
end
