class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :text
      t.string :specialization
      t.string :tags

      t.timestamps
    end
  end
end
