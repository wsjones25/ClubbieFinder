module ApplicationHelper

	def login_helper
		if current_user
	      link_to "Logout", destroy_user_session_path, method: :delete
	    else
	      (link_to "Sign up", new_user_registration_path) + 
	      "<br>".html_safe + 
	      (link_to "Login", user_session_path)
	    end
	end

	#def sample_helper
		#content_tag(:div, "My content", class: "my-class") 
	#end

	# Can also take arguements

end
