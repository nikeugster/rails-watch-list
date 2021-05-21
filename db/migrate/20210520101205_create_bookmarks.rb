class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie_id, null: false, foreign_key: true
      t.references :list_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
