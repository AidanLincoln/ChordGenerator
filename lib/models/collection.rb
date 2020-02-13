class Collection < ActiveRecord::Base
    has_many :collections_notes
    has_many :notes, through: :collections_notes
    def self.scales
        Collection.where("form = 'scale'")
    end
    def self.chords
        Collection.where("form = 'chord'")
    end
end