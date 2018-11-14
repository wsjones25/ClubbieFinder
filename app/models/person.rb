class Person < ApplicationRecord
  	belongs_to :club
  	validates_presence_of :first_name, :last_name, :position
end
