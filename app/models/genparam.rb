class Genparam < ActiveRecord::Base
	belongs_to :shift
	validates :shift_id, presence: true
end
