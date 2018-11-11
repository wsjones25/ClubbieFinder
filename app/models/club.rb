class Club < ApplicationRecord
	extend FriendlyId
  	friendly_id :club_name, use: :slugged
end
