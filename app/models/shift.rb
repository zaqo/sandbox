class Shift < ActiveRecord::Base
  has_many :shotdowns, dependent: :destroy
  has_many :techparams, dependent: :destroy
  has_many :humparams, dependent: :destroy
  has_many :people
  has_many :genparams, dependent: :destroy


	validates_format_of :manager,:operator,:mechanic,:mechanicpsh,:kip, :without=>/[0+]/ , message: "нужно выбрать!"

	validates :date, uniqueness: {scope: :time, message: "Такая смена уже существует!"}
	validate :operators_must_be_different
	
	def operators_must_be_different
		if operator==operator1
			errors.add(:operator1,"Неверно выбран оператор линии")
		end

	end
end

