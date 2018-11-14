class Campaign < ApplicationRecord
  validates_presence_of :recruit_type, :ideal_start_date, :job_description, :compensation, :passport_requirements
  belongs_to :club
end
