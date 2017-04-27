class Restaurant < ApplicationRecord
	scope :active, -> {where(delete_flag: false)}
end
