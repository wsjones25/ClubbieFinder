class Club < ApplicationRecord
  include Placeholder
  validates_presence_of :club_name, :sport, :address, :main_image, :sport_icon, :active_status
	enum active_status: { inactive: 0, active: 1}
	extend FriendlyId
  	friendly_id :club_name, use: :slugged
  	has_many :teams
  	has_many :people

  after_initialize :set_defaults

  	# Setting a default value of the main_image.
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '200', width: '300')
    self.sport_icon ||= Placeholder.image_generator(height: '40', width: '40')
	end
end
