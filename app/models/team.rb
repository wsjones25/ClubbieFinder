class Team < ApplicationRecord
	validates_presence_of :name
	belongs_to :club
end
