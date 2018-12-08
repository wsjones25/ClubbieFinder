module ApplicationHelper

	def login_helper
		if current_user.is_a?(GuestUser) 
	      (link_to "Sign up", new_user_registration_path) + 
	      "<br>".html_safe + 
	      (link_to "Login", user_session_path)
	    else
	      link_to "Logout", destroy_user_session_path, method: :delete
	    end
	end

	#def sample_helper
		#content_tag(:div, "My content", class: "my-class") 
	#end

	# Can also take arguements

end
