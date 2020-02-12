class CreateCollection < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :form
      t.string :name
    end
  end
end
