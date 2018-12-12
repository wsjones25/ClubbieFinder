module ApplicationHelper

	def login_helper
		if current_user.is_a?(GuestUser) 
	  		(link_to "Sign up", sign_up_path) + 
	      	"<br>".html_safe + 
	      	(link_to "Login", login_path)
	    elsif current_user.is_a?(User)
	    	link_to "Logout", destroy_user_session_path, method: :delete
	    elsif current_user.is_a?(ClubUser)
	    	link_to "Logout", destroy_club_user_session_path, method: :delete
	    end
	end

	#def sample_helper
		#content_tag(:div, "My content", class: "my-class") 
	#end

	# Can also take arguements

end
