class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :taggable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
