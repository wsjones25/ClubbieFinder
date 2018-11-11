class Club < ApplicationRecord
	enum active_status: { inactive: 0, active: 1}
	extend FriendlyId
  	friendly_id :club_name, use: :slugged
end
