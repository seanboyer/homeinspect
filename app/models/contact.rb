class Contact < ActiveRecord::Base

	validate :check_contact_method

private
	def check_contact_method
	
	  if phone.blank? and email.blank?
	   #one at least must be filled in, add a custom error message
	   errors[:base] << "Either the phone or email field must be completed so we can contact you back.  Thanks!"
	   return false
		
	  else
	   return true
	  end
	end

end