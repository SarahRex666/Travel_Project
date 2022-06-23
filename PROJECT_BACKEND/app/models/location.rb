class Location < ActiveRecord::Base
    belongs_to :guide
    belongs_to :tour


end