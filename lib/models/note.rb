class Note < ActiveRecord::Base
    has_many :collections_notes
    has_many :collections, through: :collections_notes
end