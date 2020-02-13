class CollectionsNote < ActiveRecord::Base
    belongs_to :note
    belongs_to :collection
    def self.notes_in_scale(scale_id)
        CollectionsNote.where("collection_id = #{scale_id}")
    end
end