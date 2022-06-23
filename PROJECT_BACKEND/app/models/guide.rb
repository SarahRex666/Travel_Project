class Guide < ActiveRecord::Base
    has_many :locations
    has_many :tours, through: :locations


end