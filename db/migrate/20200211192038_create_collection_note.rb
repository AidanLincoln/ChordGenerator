class CreateCollectionNote < ActiveRecord::Migration[5.2]
  def change
    create_table :collections_notes do |t|
      t.integer :note_id
      t.integer :collection_id
    end
  end
end
