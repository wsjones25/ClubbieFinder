module ApplicationHelper

	def login_helper
		if club_user_signed_in?
			link_to "Logout", destroy_club_user_session_path, method: :delete
		elsif user_signed_in?
			link_to "Logout", destroy_user_session_path, method: :delete
		else
			(link_to "Sign up", sign_up_path) + 
	      	"<br>".html_safe + 
	      	(link_to "Login", login_path)
	    end
	end

	#def sample_helper
		#content_tag(:div, "My content", class: "my-class") 
	#end

	# Can also take arguements

end
