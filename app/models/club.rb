class Club < ApplicationRecord
  include Placeholder
  
  has_many :teams
  accepts_nested_attributes_for :teams, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  has_many :campaigns
  accepts_nested_attributes_for :campaigns,
                                reject_if: lambda { |attrs| 
                                                      attrs['recruit_type'].blank? || 
                                                      attrs['ideal_start_date'].blank? ||
                                                      attrs['job_description'].blank? ||
                                                      attrs['compensation'].blank? ||
                                                      attrs['passport_requirements'].blank? }

  has_many :people
  accepts_nested_attributes_for :people
                                reject_if: lambda { |attrs| 
                                                      attrs['first_name'].blank? || 
                                                      attrs['last_name'].blank? ||
                                                      attrs['email'].blank? }

  validates_presence_of :club_name, :sport, :address, :main_image, :sport_icon, :active_status
	enum active_status: { inactive: 0, active: 1}
	
  extend FriendlyId
  	friendly_id :club_name, use: :slugged

  after_initialize :set_defaults

  	# Setting a default value of the main_image.
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '200', width: '300')
    self.sport_icon ||= Placeholder.image_generator(height: '40', width: '40')
	end
end
