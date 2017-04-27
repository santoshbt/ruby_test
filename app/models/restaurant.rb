class Restaurant < ApplicationRecord
	has_many :cuisines, dependent: :destroy
	scope :active, -> {where(delete_flag: false)}
end
