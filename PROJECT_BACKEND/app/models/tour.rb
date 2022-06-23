class Tour < ActiveRecord::Base
    has_many :locations
    has_many :addons
    has_many :guides, through: :locations

    serialize :tags, Array
end