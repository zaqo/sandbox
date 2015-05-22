class Shift < ActiveRecord::Base
  has_many :shotdowns, dependent: :destroy
  has_many :techparams, dependent: :destroy
  has_many :humparams, dependent: :destroy
  has_many :people
  has_many :genparams, dependent: :destroy

	validates :manager, :presence=>true
	validates :operator, :presence=>true
	validates :mechanic, :presence=>true
	validates :mechanicpsh, :presence=>true
	validates :kip, :presence=>true

end
