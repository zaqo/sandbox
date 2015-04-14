class Shotdown < ActiveRecord::Base
  belongs_to :shift

  validates :end, :presence=>true

end
