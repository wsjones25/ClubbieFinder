class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include DeviseWhitelistConcern
	include DefaultPageContentConcern
	include CurrentUserConcern
	include AccessibleConcern
end
