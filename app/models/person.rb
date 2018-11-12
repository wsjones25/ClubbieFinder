class Person < ApplicationRecord
  belongs_to :club
  validates_presense_of :first_name, :last_name, :position
end
