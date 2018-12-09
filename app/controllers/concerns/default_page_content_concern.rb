module DefaultPageContentConcern
	extend ActiveSupport::Concern
	included do 
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "Clubbie | For sporty people"
		@seo_keywords = "sports clubs"
	end
end