class CollectionsNote < ActiveRecord::Base
    belongs_to :note
    belongs_to :collection
end