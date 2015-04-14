class Product < ActiveRecord::Base
validates :number, :presence=>true, :uniqueness=>true
end
