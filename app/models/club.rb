class Club < ApplicationRecord
  	validates_presence_of :club_name, :sport, :address, :main_image, :active_status
	enum active_status: { inactive: 0, active: 1}
	extend FriendlyId
  	friendly_id :club_name, use: :slugged
  	has_many :teams
  	has_many :people

  	after_initialize :set_defaults

  	# Setting a default value of the main_image.
  	def set_defaults
  		self.main_image ||= "http://placehold.it/300x200"
  	end
end
