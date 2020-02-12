class CreateNote < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
    end
  end
end
