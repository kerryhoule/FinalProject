class JoinupMailer < ActionMailer::Base
  	default :to => AdminUser.all.map(&:email),
  			:from => "system@prosynergy.ca"

  	def join_email(new_contractor, description)
  		@new_contractor = new_contractor
  		@description = description
		mail(:subject => "Someone wants to join us")
  	end
end
