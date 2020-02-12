class Collection < ActiveRecord::Base
    has_many :collections_notes
    has_many :notes, through: :collections_notes
    def self.all_scales
        Collection.where("form = 'scale'")
    end
end