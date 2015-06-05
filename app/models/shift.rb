class Shift < ActiveRecord::Base
  has_many :shotdowns, dependent: :destroy
  has_many :techparams, dependent: :destroy
  has_many :humparams, dependent: :destroy
  has_many :people
  has_many :genparams, dependent: :destroy


	validates_format_of :manager,:operator,:mechanic,:mechanicpsh,:kip, :without=>/[0+]/
validates_uniqueness_of [:date,:time]

end
